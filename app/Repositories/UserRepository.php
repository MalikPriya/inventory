<?php

namespace App\Repositories;

use App\Interfaces\UserInterface;
use App\User;
use App\Models\StaffPostDetail;
use App\Models\Customer;
use App\Models\Supplier;
use App\Models\Address;
use App\Models\Distributor;
use App\Activity;
use App\StoreVisit;
use App\UserAttendance;
use App\StartEndDay;
use Illuminate\Support\Facades\Hash;

class UserRepository implements UserInterface
{
    /**
     * This method is for show user list
     *
     */
    public function listAll()
    {
        return User::all();
    }

    /**
     * This method is for show customer list
     *
     */
    public function listAllCustomer()
    {
        return Customer::all();
    }
    /**
     * This method is for show Supplier list
     *
     */
    public function listAllSupplier()
    {
        return Supplier::all();
    }
    /**
     * This method is for show user details
     * @param  $id
     *
     */
    public function listById($id)
    {
        $staff = User::find($id);
        $StaffPostDetail = StaffPostDetail::where('user_id', $id);

       return User::where('id', $id)->get();
    }
    /**
     * This method is for create user
     *
     */
    public function create(array $data)
    {
        $collectedData = collect($data);
        // dd($collectedData);
        if ($collectedData['type'] == 1) {
            $newEntry = new Customer;
            $newEntry->name = $collectedData['name'];
            // $newEntry->official_name = $collectedData['official_name'];
            $newEntry->email = $collectedData['email'];
            $newEntry->mobile = $collectedData['mobile'];
            $newEntry->whatsapp_no = $collectedData['whatsapp_no'];
            $newEntry->credit_limit = $collectedData['credit_limit'];
            $newEntry->credit_days = $collectedData['credit_days'];
            $newEntry->gst_number = $collectedData['gst_number'];

            $upload_path = "uploads/user/";
            $image = $collectedData['gst_file'];
            $imageName = time().".".$image->getClientOriginalName();
            $image->move($upload_path, $imageName);
            $uploadedImage = $imageName;
            $newEntry->gst_file= $upload_path.$uploadedImage;
            
            $newEntry->billing_address = $collectedData['billing_address'];
            $newEntry->billing_landmark = $collectedData['billing_landmark'];
            $newEntry->billing_city = $collectedData['billing_city'];
            $newEntry->billing_state = $collectedData['billing_state'];
            $newEntry->billing_pin = $collectedData['billing_pin'];
            $newEntry->billing_country = $collectedData['billing_country'];

            $newEntry->shipping_address = $collectedData['shipping_address'];
            $newEntry->shipping_landmark = $collectedData['shipping_landmark'];
            $newEntry->shipping_city = $collectedData['shipping_city'];
            $newEntry->shipping_state = $collectedData['shipping_state'];
            $newEntry->shipping_pin = $collectedData['shipping_pin'];
            $newEntry->shipping_country = $collectedData['shipping_country'];
            $newEntry->save();
        }
        if ($collectedData['type'] == 2) {
            $newEntry = new Supplier;
            $newEntry->name = $collectedData['name'];
            $newEntry->email = $collectedData['email'];
            $newEntry->mobile = $collectedData['mobile'];
            $newEntry->whatsapp_no = $collectedData['whatsapp_no'];
            $newEntry->credit_limit = $collectedData['credit_limit'];
            $newEntry->credit_days = $collectedData['credit_days'];
            $newEntry->gst_number = $collectedData['gst_number'];

            $upload_path = "uploads/user/";
            $image = $collectedData['gst_file'];
            $imageName = time().".".$image->getClientOriginalName();
            $image->move($upload_path, $imageName);
            $uploadedImage = $imageName;
            $newEntry->gst_file= $upload_path.$uploadedImage;
            
            $newEntry->billing_address = $collectedData['billing_address'];
            $newEntry->billing_landmark = $collectedData['billing_landmark'];
            $newEntry->billing_city = $collectedData['billing_city'];
            $newEntry->billing_state = $collectedData['billing_state'];
            $newEntry->billing_pin = $collectedData['billing_pin'];
            $newEntry->billing_country = $collectedData['billing_country'];

            $newEntry->shipping_address = $collectedData['shipping_address'];
            $newEntry->shipping_landmark = $collectedData['shipping_landmark'];
            $newEntry->shipping_city = $collectedData['shipping_city'];
            $newEntry->shipping_state = $collectedData['shipping_state'];
            $newEntry->shipping_pin = $collectedData['shipping_pin'];
            $newEntry->shipping_country = $collectedData['shipping_country'];
            $newEntry->save();
        }

        return $newEntry;
    }

    /**
     * This method is for create staff user
     *
     */
    public function createStaff(array $data)
    {
        try {
            //code...
            $collectedData = collect($data);
            $newEntry = new User;
            $newEntry->name = $collectedData['name'];
            $newEntry->email = $collectedData['email'];
            $newEntry->mobile = $collectedData['mobile'];
            $newEntry->alias = $collectedData['alias'];
            $newEntry->address = $collectedData['address'];
            $newEntry->landmark = $collectedData['landmark'];
            $newEntry->city = $collectedData['city'];
            $newEntry->state = $collectedData['state'];
            $newEntry->pin = $collectedData['pin'];
            $newEntry->country = $collectedData['country'];
            // $newEntry->user_id_front = $collectedData['user_id_front'];
            // $newEntry->user_id_back = $collectedData['user_id_back'];
            $newEntry->aadhar_no = $collectedData['aadhar_no'];
            $newEntry->bank_account_no = $collectedData['bank_account_no'];

            $newEntry->password = Hash::make('secret');


            $upload_path = "uploads/user/";
            $image = $collectedData['image'];
            $imageName = time().".".$image->getClientOriginalName();
            $image->move($upload_path, $imageName);
            $uploadedImage = $imageName;
            $newEntry->image= $upload_path.$uploadedImage;

            

            $newEntry->save();

            $allowance = new StaffPostDetail;
            $allowance->staff_id = $newEntry->id;
            $allowance->designation = $collectedData['designation'];
            $allowance->salary = $collectedData['salary'];
            $allowance->house_rent = $collectedData['house_rent'];
            $allowance->convenience = $collectedData['convenience'];
            $allowance->dearness = $collectedData['dearness'];
            $allowance->medical = $collectedData['medical'];
            $allowance->overtime = $collectedData['overtime'];
            $allowance->city_compensatory = $collectedData['city_compensatory'];
            $allowance->project = $collectedData['project'];
            $allowance->food = $collectedData['food'];
            $allowance->special = $collectedData['special'];

            $allowance->save();
            // $newEntry->password = Hash::make($collectedData['password']);
            

            return $newEntry;
        } catch (\Throwable $th) {
            throw $th;
        }
    }

    /**
     * This method is for user update
     *
     *
     */
    public function update($id, array $newDetails)
    {
        $upload_path = "uploads/user/";
        $updatedEntry = User::findOrFail($id);
        $collectedData = collect($newDetails);
        $updatedEntry->fname = $collectedData['fname'];
        $updatedEntry->lname = $collectedData['lname'];
        $updatedEntry->mobile = $collectedData['mobile'];
        $updatedEntry->whatsapp_no = $collectedData['whatsapp_no'];
        $updatedEntry->employee_id = $collectedData['employee_id'];
        $updatedEntry->type = $collectedData['type'];
        $updatedEntry->address = $collectedData['address'];
        $updatedEntry->landmark = $collectedData['landmark'];
        $updatedEntry->state = $collectedData['state'];
        $updatedEntry->city = $collectedData['city'];
        $updatedEntry->pin = $collectedData['pin'];
        $updatedEntry->aadhar_no = $collectedData['aadhar_no'];
        $updatedEntry->pan_no = $collectedData['pan_no'];

        if (!empty($collectedData['gender'])) {
            $updatedEntry->gender = $collectedData['gender'];
        }
        if (!empty($collectedData['type'])) {
            $updatedEntry->type = $collectedData['type'];
        }
        if (isset($newDetails['image'])) {
            // dd('here');
            $image = $collectedData['image'];
            $imageName = time().".".mt_rand().".".$image->getClientOriginalName();
            $image->move($upload_path, $imageName);
            $uploadedImage = $imageName;
            $updatedEntry->image = $upload_path.$uploadedImage;
        }
        $updatedEntry->save();

        return $updatedEntry;
    }
    /**
     * This method is for update user status
     * @param  $id
     *
     */
    public function toggle($id){
        $updatedEntry = User::findOrFail($id);

        $status = ( $updatedEntry->status == 1 ) ? 0 : 1;
        $updatedEntry->status = $status;
        $updatedEntry->save();

        return $updatedEntry;
    }
    /**
     * This method is for update user verification
     * @param  $id
     *
     */
    public function verification($id){
        $updatedEntry = User::findOrFail($id);

        $is_verified = ( $updatedEntry->is_verified == 1 ) ? 0 : 1;
        $updatedEntry->is_verified = $is_verified;
        $updatedEntry->save();

        return $updatedEntry;
    }
    /**
     * This method is for user delete
     * @param  $id
     *
     */
    public function delete($id)
    {
        User::destroy($id);
    }
    /**
     * This method is to get user activity details
     * @param str $id
     */
    public function useractivity(){
        //return Activity::all();
        $today = date("Y-m-d");
        return Activity::where('date', '=', $today)->get();
    }

    public function storeVisit(){
        return StoreVisit::latest('id', 'desc')->get();
    }
    
    
    //last 10 visit
    
    public function storeVisitlist($storeId){
        return StoreVisit::where('store_id',$storeId)->where('created_at', '>', \Carbon\Carbon::now()->startOfDay())->latest('id', 'desc')->limit(10)->with('users')->get();
    }
    /**
     * This method is to get user activity details by Id
     * @param str $id
     */
    public function useractivitylistById($activityId){

        return Activity::where('id', $activityId)->with('users')->first();
    }
    /**
     * This method is to get user activity details
     * @param str $data
     * return array
     */
    public function useractivitycreate(array $data)
    {
        return Activity::create($data);
    }
    public function storeVisitCreate(array $data)
    {
        return StoreVisit::create($data);
    }

    /**
     * This method is to update user activity details
     * @param str $id
     */
    public function useractivityupdate($id, array $newDetails)
    {
        // return Activity::find($activityId)->update($newDetails);
        try {
            $data = Activity::whereId($id)->update($newDetails);

            // if ($data) {
                $resp = ['error' => false, 'message' => 'Data updated successfully'];
            // } else {
            //     $resp = ['error' => true, 'message' => 'Something happened'];
            // }
        } catch (\Throwable $th) {
            $resp = ['error' => true, 'message' => $th];
        }
        return $resp;
    }

    /**
     * This method is to delete user activity details
     *
     */
    public function useractivitydelete($activityId)
    {
        try {
        Activity::findOrFail($activityId)->delete();
        $resp = ['error' => false, 'message' => 'Data Deleted successfully'];
            // } else {
            //     $resp = ['error' => true, 'message' => 'Something happened'];
            // }
        } catch (\Throwable $th) {
            $resp = ['error' => true, 'message' => $th];
        }
        return $resp;
    }


    /**
     * This method is to get user attendance details
     *
     */
    public function userattendance()
    {
        return UserAttendance::all();
    }
    /**
     * This method is to get user attendance details by Id
     * @param str $id
     */
    public function userattendanceById($id)
    {
        return UserAttendance::where('id', $id)->with('users')->first();
    }
    /**
     * This method is to create user attendance details
     * @param str $data
     * return array
     */
    public function userattendancecreate(array $data)
    {
        return UserAttendance::create($data);
    }
    /**
     * This method is to update user attendance details
     * @param str $id
     */
    public function userattendanceupdate(int $id,array $newDetails)
    {


        try {
            $data = UserAttendance::whereId($id)->update($newDetails);

            // if ($data) {
                $resp = ['error' => false, 'message' => 'Data updated successfully'];
            // } else {
            //     $resp = ['error' => true, 'message' => 'Something happened'];
            // }
        } catch (\Throwable $th) {
            $resp = ['error' => true, 'message' => $th];
        }
        return $resp;
    }
    /**
     * This method is to delete user attendance details
     *
     */
    public function userattendancedelete($id)
    {
        UserAttendance::destroy($id);
    }


    /**
     * This method is to get user start day end day details
     *
     */
    public function userday()
    {
        return StartEndDay::all();
    }
    /**
     * This method is to get user start day end day details by Id
     * @param str $id
     */
    public function userdaylistById($id)
    {
        return StartEndDay::where('id', $id)->with('users')->first();
    }
    /**
     * This method is to create user start day end day details
     * @param str $data
     * return array
     */
    public function userdaycreate(array $data)
    {
        return StartEndDay::create($data);
    }
    /**
     * This method is to update user start day end day details
     * @param str $id
     */
    public function userdayupdate(int $id, array $newDetails)
    {
        try {
            $data = StartEndDay::whereId($id)->update($newDetails);

            // if ($data) {
                $resp = ['error' => false, 'message' => 'Data updated successfully'];
            // } else {
            //     $resp = ['error' => true, 'message' => 'Something happened'];
            // }
        } catch (\Throwable $th) {
            $resp = ['error' => true, 'message' => $th];
        }
        return $resp;
    }
    /**
     * This method is to delete user start day end day details
     *
     */
    public function userdaydelete($id)
    {
        StartEndDay::destroy($id);
    }

    /**
     * This method is to check validation of mobile no and generate otp
     * @param str $mobileNo
     *
     */

    public function otpGenerate($mobileNo){
        $userExists = User::where('mobile', $mobileNo)->first();

        if ($userExists) {
            $otp = mt_rand(0, 10000);
            $userExists->otp = 1234;

            // sms gateway
            $userExists->save();

            $resp = 'OTP generated successfully';
        } else {
            $resp = 'User does not exist';
        }
        return $resp;
    }

    /**
     * This method is to check validation of otp
     * @param str $otp
     *
     */
    public function otpcheck($mobile , $otp)
    {
        $userExists = User::where('mobile', $mobile)->where('otp', $otp)->first();

        if ($userExists) return $userExists;
        else return false;
    }


    /**
     * This method is to get user  details by Id
     * @param str $id
     */
    public function userdetailsById($id){
        return User::where('id', $id)->get();
    }
   public function updateuserprofile($userId,$newDetails)
   {
    try {
        $data = User::whereId($userId)->update($newDetails);

        // if ($data) {
            $resp = ['error' => false, 'message' => 'Data updated successfully'];
        // } else {
        //     $resp = ['error' => true, 'message' => 'Something happened'];
        // }
    } catch (\Throwable $th) {
        $resp = ['error' => true, 'message' => $th];
    }
    return $resp;
}
    /**
     * This method is to get user activity details
     * @param str $data
     * return array
     */
    public function distributorcreate(array $data)
    {
        return Distributor::create($data);
    }

     public function distributorlist(){
     return Distributor::all();
     
     }
     
     
     
     public function distributorview($id)
    {
        return Distributor::where('id', $id)->get();
    }
    // public function storeVisitCreate(array $data)
    // {
    //     return StoreVisit::create($data);
    // }

}
