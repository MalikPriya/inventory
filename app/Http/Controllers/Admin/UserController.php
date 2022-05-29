<?php

namespace App\Http\Controllers\Admin;

use App\Interfaces\UserInterface;
use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Str;

class UserController extends Controller
{
    //  private UserInterface $userRepository;

    public function __construct(UserInterface $userRepository)
    {
        $this->userRepository = $userRepository;
    }
    /**
     * This method is for show user list
     *
     */
    public function index(Request $request, $userType = '')
    {
        // dd($userType);
        if ($userType == 'customer') {
            $data = $this->userRepository->listAllCustomer();
        }
        if ($userType == 'supplier') {
            $data = $this->userRepository->listAllSupplier();
        }
        
        return view('admin.user.index', compact('data'));
    }

    /**
     * This method is for show user list
     *
     */
    public function staffList(Request $request)
    {
        $data = $this->userRepository->listAll();
        return view('admin.staff.index', compact('data'));
    }
    /**
     * This method is for create user
     *
     */
    public function store(Request $request)
    {
        $request->validate([
            "name" => "required|string|max:255",
            "email" => "required|string|max:255|unique:users,email",
            "mobile" => "required|integer",
            "whatsapp_no" => "required|integer",
            "type" => "required",
            "credit_limit" => "required",
            "credit_days" => "required",
            "gst_number" => "required",
            "shipping_address" => "required|string",
            "shipping_landmark" => "required|string",
            "shipping_state" => "required|string",
            "shipping_city" => "required|string",
            "shipping_pin" => "required|string",
            "shipping_country" => "required|string",
            "billing_address" => "required|string",
            "billing_landmark" => "required|string",
            "billing_state" => "required|string",
            "billing_city" => "required|string",
            "billing_pin" => "required|string",
            "billing_country" => "required|string",
            "gst_file" =>"nullable|mimes:jpg,jpeg,png,svg,gif|max:10000000"
        ]);

        // dd($request->get('type'));

        $params = $request->except('_token');
        $storeData = $this->userRepository->create($params);
        $userType = ($request->except('type') == 1) ? 'customer' : 'supplier';
        if ($storeData) {
            return redirect()->route('admin.user.index', $userType);
        } else {
            return redirect()->route('admin.user.index', $userType)->withInput($request->all());
        }
    }

    /**
     * This method is for create Staff
     *
     */
    public function storeStaff(Request $request)
    {
        // dd($request->all());
        $request->validate([
            "name" => "nullable|string|max:255",
            "official_name" => "nullable",
            "email" => "nullable|string|max:255|unique:users,email",
            "mobile" => "nullable|integer",
            "alias" => "nullable",
            "type" => "nullable",
            "aadhar_no" => "nullable",
            "bank_account_no" => "nullable",
            "designation" => "nullable",
            "address" => "nullable|string",
            "landmark" => "nullable|string",
            "state" => "nullable|string",
            "city" => "nullable|string",
            "pin" => "nullable|string",
            "country" => "nullable|string",
            "image" =>"nullable|mimes:jpg,jpeg,png,svg,gif|max:10000000",
            "user_id_front" =>"nullable|mimes:jpg,jpeg,png,svg,gif|max:10000000",
            "user_id_back" =>"nullable|mimes:jpg,jpeg,png,svg,gif|max:10000000"
        ]);

        // dd($request->get('type'));

        $params = $request->except('_token');
        // dd($params);
        $storeData = $this->userRepository->createStaff($params);

        if ($storeData) {
            return redirect()->route('admin.user.index');
        } else {
            return redirect()->route('admin.user.index')->withInput($request->all());
        }
    }
    /**
     * This method is for show user details
     * @param  $id
     *
     */
    public function show(Request $request, $id)
    {
        $data = $this->userRepository->listById($id);
        return view('admin.user.detail', compact('data'));
    }
    /**
     * This method is for edit staff details
     * @param  $id
     *
     */
    public function editStaff(Request $request, $id)
    {
        $data = $this->userRepository->listById($id);
        dd($data);
        return view('admin.staff.edit', compact('data'));
    }
    /**
     * This method is for user update
     *
     *
     */
    public function update(Request $request, $id)
    {
        // dd($request->all());

        $request->validate([
            "fname" => "nullable|string|min:1",
            "lname" => "nullable|string|min:1",
            "email" => "nullable|string|min:1|unique:users,email",
            "mobile" => "nullable|integer|digits:10",
            "whatsapp_no" => "nullable|integer|digits:10",
            "gender" => "nullable|string",
            "type" => "nullable|string",
            "employee_id" => "string|min:1",
            "address" => "nullable|string",
            "landmark" => "nullable|string",
            "state" => "nullable|string",
            "city" => "nullable|string",
            "aadhar_no" => "nullable|string",
            "pan_no" => "nullable|string",
            "pin" => "nullable|string",
            "image"    =>"nullable|mimes:jpg,jpeg,png,svg,gif|max:10000000"
        ]);

        $params = $request->except('_token');
        $storeData = $this->userRepository->update($id, $params);

        if ($storeData) {
            return redirect()->route('admin.user.index');
        } else {
            return redirect()->route('admin.user.create')->withInput($request->all());
        }
    }
    /**
     * This method is for update user status
     * @param  $id
     *
     */
    public function status(Request $request, $id)
    {
        $storeData = $this->userRepository->toggle($id);

        if ($storeData) {
            return redirect()->route('admin.user.index');
        } else {
            return redirect()->route('admin.user.index')->withInput($request->all());
        }
    }
    /**
     * This method is for update user verification
     * @param  $id
     *
     */
    public function verification(Request $request, $id)
    {
        $storeData = $this->userRepository->verification($id);

        if ($storeData) {
            return redirect()->route('admin.user.index');
        } else {
            return redirect()->route('admin.user.index')->withInput($request->all());
        }
    }
    /**
     * This method is for user delete
     * @param  $id
     *
     */
    public function destroy(Request $request, $id)
    {
        $this->userRepository->delete($id);

        return redirect()->route('admin.user.index');
    }
}
