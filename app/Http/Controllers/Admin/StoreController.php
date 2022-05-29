<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Interfaces\StoreInterface;
use Illuminate\Http\Request;
use App\Models\Store;
use Illuminate\Support\Str;
class StoreController extends Controller
{
    public function __construct(StoreInterface $storeRepository)
    {
        $this->storeRepository = $storeRepository;
    }
    /**
     * This method is for show store list
     *
     */
    public function index(Request $request)
    {

        $data = $this->storeRepository->listAll();
        $users = $this->storeRepository->listUsers();
        return view('admin.store.index', compact('data','users'));
    }
    /**
     * This method is for create store
     *
     */
    public function store(Request $request)
    {
        $request->validate([
            "store_name" => "required|string|max:255",
            "bussiness_name" => "nullable|string",
            "store_OCC_number"=> "required|string|max:255",
            "contact" => "required|",
            "whatsapp"=>"required",
            "email" => "nullable|string",
            "address" => "nullable|string",
            "state" => "nullable|string",
            "city" => "nullable|string",
            "pin" => "nullable|string",
            "area" => "nullable|string",
             "user_id"=>"required",
            "image" => "required|mimes:jpg,jpeg,png,svg,gif|max:10000000"
        ]);
        $params = $request->except('_token');

        $Store = $this->storeRepository->create($params);

        if ($Store) {
            return redirect()->route('admin.store.index');
        } else {
            return redirect()->route('admin.store.create')->withInput($request->all());
        }
    }
    /**
     * This method is for show store details
     * @param  $id
     *
     */
    public function show(Request $request, $id)
    {
        $data = $this->storeRepository->listById($id);
        $users = $this->storeRepository->listUsers();
        return view('admin.store.detail', compact('data','users'));
    }
    /**
     * This method is for store update
     *
     *
     */
    public function update(Request $request, $id)
    {
        // dd($request->all());

        $request->validate([
            "store_name" => "required|string|max:255",
            "bussiness_name" => "nullable|string",
            "store_OCC_number"=> "required|string|max:255",
            "contact" => "required|",
            "whatsapp"=>"required",
            "email" => "nullable|string",
            "address" => "nullable|string",
            "state" => "nullable|string",
            "city" => "nullable|string",
            "pin" => "nullable|string",
            "area" => "nullable|string",
          //   "user_id"=>"nullable|required",
         //   "image" => "nullable|required|mimes:jpg,jpeg,png,svg,gif|max:10000000"
        ]);


        $params = $request->except('_token');

        $store = $this->storeRepository->update($id, $params);

        if ($store) {
            return redirect()->route('admin.store.index');
        } else {
            return redirect()->route('admin.store.create')->withInput($request->all());
        }
    }


    /**
     * This method is for update store status
     * @param  $id
     *
     */
    public function status(Request $request, $id)
    {
        $storeStat = $this->storeRepository->toggle($id);

        if ($storeStat) {
            return redirect()->route('admin.store.index');
        } else {
            return redirect()->route('admin.store.create')->withInput($request->all());
        }
    }
    /**
     * This method is for store delete
     * @param  $id
     *
     */
    public function destroy(Request $request, $id)
    {
        $this->storeRepository->delete($id);

        return redirect()->route('admin.store.index');
    }


}
