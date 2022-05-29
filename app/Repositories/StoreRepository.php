<?php

namespace App\Repositories;

use App\Interfaces\StoreInterface;
use App\Models\Store;
use App\Traits\UploadAble;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\DB;
use App\User;
use App\Models\NoOrderReason;
use App\UserNoorderreason;
use Illuminate\Support\Str;
class StoreRepository implements StoreInterface
{
    use UploadAble;
    /**
     * This method is for show store list
     *
     */
    public function listAll()
    {
        return Store::all();
    }

     /**
     * This method is for show user list
     *
     */
    public function listUsers()
    {
        return User::all();
    }

    /**
     * This method is for show store details
     * @param  $id
     *
     */
    public function listById($id)
    {
       return Store::where('id',$id)->with('user', 'ProductDetails')->first();
    }

    /**
     * This method is for show store details
     * @param  $id
     *
     */
    public function listBySlug($slug)
    {
       return Store::where('slug',$slug)->with('user', 'ProductDetails')->first();
    }

    /**
     * This method is for store delete
     * @param  $id
     *
     */
    public function delete($id)
    {
        Store::destroy($id);
    }

    /**
     * This method is for store create
     * @param array $data
     * return in array format
     */
    public function create(array $data)
    {
      // dd($data);
        $collection = collect($data);
        $store = new Store;
        $store->user_id = $collection['user_id'];
         $store->store_name = $collection['store_name'];
        //  $store->slug = $collection['slug'];

        $store->bussiness_name	 = $collection['bussiness_name'];
        $store->store_OCC_number = $collection['store_OCC_number'];
        $store->contact = $collection['contact'];
        $store->whatsapp = $collection['whatsapp'];
        $store->email	 = $collection['email'];
        $store->address	 = $collection['address'];
        $store->state	 = $collection['state'];
        $store->city	 = $collection['city'];
        $store->pin	 = $collection['pin'];
        $store->area	 = $collection['area'];
        if (!empty($collection['image'])) {
        $upload_path = "uploads/store/";
        $image = $collection['image'];
        $imageName = time().".".$image->getClientOriginalName();
        $image->move($upload_path, $imageName);
        $uploadedImage = $imageName;
        $store->image= $upload_path.$uploadedImage;

        }
        // if (!empty($collection['slug'])) {
            $slug = Str::slug($collection['store_name'], '-');
            $slugExistCount = Store::where('slug', $slug)->count();
            if ($slugExistCount > 0) $slug = $slug.'-'.($slugExistCount+1);
            $store->slug = $slug;
        // }
        $store->save();
        return $store;
    }
    /**
     * This method is for store update
     * @param array $newDetails
     * return in array format
     */
    public function update($id, array $newDetails)
    {
        $upload_path = "uploads/store/";
        $store = Store::findOrFail($id);
        $collection = collect($newDetails);
        if (!empty($collection['user_id'])) {
            $store->user_id = $collection['user_id'];
        }
        // dd($newDetails);

        (!empty($newDetails['store_name'])) ? $store->store_name = $collection['store_name'] : '';
        (!empty($newDetails['bussiness_name'])) ? $store->bussiness_name = $collection['bussiness_name'] : '';
        (!empty($newDetails['store_OCC_number'])) ? $store->store_OCC_number = $collection['store_OCC_number'] : '';
        (!empty($newDetails['contact'])) ? $store->contact = $collection['contact'] : '';
        (!empty($newDetails['email'])) ? $store->email = $collection['email'] : '';
        (!empty($newDetails['address'])) ? $store->address = $collection['address'] : '';
        (!empty($newDetails['state'])) ? $store->state = $collection['state'] : '';
        (!empty($newDetails['city'])) ? $store->city = $collection['city'] : '';
        (!empty($newDetails['pin'])) ? $store->pin = $collection['pin'] : '';
        (!empty($newDetails['area'])) ? $store->area = $collection['area'] : '';
        if (isset($newDetails['image'])) {
            // dd('here');
            $image = $collection['image'];
            $imageName = time().".".mt_rand().".".$image->getClientOriginalName();
            $image->move($upload_path, $imageName);
            $uploadedImage = $imageName;
            $store->image = $upload_path.$uploadedImage;
        }
        // dd('outside');
        $store->save();
        return $store;
    }
    /**
     * This method is for  update store status
     * @param  $id
     *
     */
    public function toggle($id){
        $store = Store::findOrFail($id);
        $status = ( $store->status == 1 ) ? 0 : 1;
        $store->status = $status;
        $store->save();
        return $store;
    }


    /**
     * This method is to update  store details through API
     * @param str $id
     */
    public function storeupdate($id, array $newDetails)
    {
       // return Store::find($storeId)->update($newDetails);
        try {
            $data = Store::whereId($id)->update($newDetails);

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
     * This method is to submit no order reason
     *
     *
     */
    public function noorderreasonupdate(array $data)
    {
       // return Store::find($storeId)->update($newDetails);
       $collection = collect($data);
       $store = new UserNoorderreason();
       $store->user_id = $collection['user_id'];
        $store->store_id = $collection['store_id'];
       // $store->no_order_reason_id = $collection['no_order_reason_id'];
       $store->comment	 = $collection['comment'];
       $store->location = $collection['location'];
       $store->lat = $collection['lat'];
       $store->lng = $collection['lng'];
       $store->date	 = $collection['date'];
       $store->time	 = $collection['time'];

       $store->save();
       return $store;
    }

    /**
     * This method is to list no order reason
     *
     *
     */
    public function noorderlistAll()
    {
        //return Store::where('store_name',$id)->get();
       // SELECT no_order_reason, COUNT(id) FROM stores GROUP BY no_order_reason
    //    $stores = DB::table('stores')
    //    ->select(DB::raw('no_order_reason','count(id) as no_order_reason'))

    //    ->groupBy('no_order_reason')
    //    ->get();
    //    return $stores;

        return NoOrderReason::all();


    }
      
    
    
    
}
