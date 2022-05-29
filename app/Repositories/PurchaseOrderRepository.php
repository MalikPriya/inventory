<?php

namespace App\Repositories;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Interfaces\PurchaseOrderInterface;
use App\Models\PurchaseOrder;
use App\Models\Supplier;
use App\Models\Category;
use App\Models\PurchaseOrderImage;
use App\Models\SubCategory;
use App\Traits\UploadAble;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;

class PurchaseOrderRepository implements PurchaseOrderInterface
{
    use UploadAble;

    public function listAll()
    {
        return PurchaseOrder::groupBy('unique_id')
                ->selectRaw('*, sum(total_price) as amount')
                ->with('supplier')            
                ->get();
    }
    
    public function supplierList()
    {
        return Supplier::all();
    }

    public function getSearchPurchaseOrders(string $term)
    {
        return PurchaseOrder::where('unique_id', 'LIKE', '%' . $term . '%')
                    ->selectRaw('*, sum(total_price) as amount')
                    ->with('supplier')
                    ->get();
    }

    public function listById($unique_id)
    {
        $orders = PurchaseOrder::where('unique_id',$unique_id)
                        // ->with(['supplier' => function ($query) {
                        //     $query->select('id', 'name', 'mobile', 'email');
                        // }])
                        ->with('supplier:id,name,mobile,email')
                        ->get();
        
        return $orders;
    }

    public function create(array $data)
    {
        // dd($data);
        DB::beginTransaction();

        try {
            // dd($data);
            $collectedData = collect($data);
            
            if (count($collectedData['product'])) {
                for ($i=0; $i < count($collectedData['product']); $i++) { 
                    $newEntry = new PurchaseOrder;
                    $newEntry->supplier_id = $collectedData['supplier_id'];
                    $newEntry->unique_id = $collectedData['unique_id'];
                    $newEntry->address = $collectedData['address'];
                    $newEntry->state = $collectedData['state'];
                    $newEntry->city = $collectedData['city'];
                    $newEntry->country = $collectedData['country'];
                    $newEntry->pin = $collectedData['pin'];
                    $newEntry->product = $collectedData['product'][$i];
                    $newEntry->qty = $collectedData['qty'][$i];
                    $newEntry->unit = $collectedData['unit_type'][$i];
                    $newEntry->unit_price = $collectedData['unit_price'][$i];
                    $newEntry->total_price = $collectedData['total_price'][$i];
                    $newEntry->save();
                }
            }

            DB::commit();
            return $newEntry;
        } catch (\Throwable $th) {
            throw $th;
            DB::rollback();
        }
    }

    public function update($id, array $newDetails)
    {
        // dd($newDetails);

        DB::beginTransaction();

        try {
            $upload_path = "uploads/purchaseorder/";
            $updatedEntry = PurchaseOrder::findOrFail($id);
            // dd($updatedEntry);
            $collectedData = collect($newDetails);
            if (!empty($collectedData['cat_id'])) $updatedEntry->cat_id = $collectedData['cat_id'];
            $updatedEntry->name = $collectedData['name'];

            // if (isset($newDetails['image'])) {
            //     // delete old image
            //     if (Storage::exists($updatedEntry->image)) unlink($updatedEntry->image);

            //     $image = $collectedData['image'];
            //     $imageName = time() . "." . $image->getClientOriginalName();
            //     $image->move($upload_path, $imageName);
            //     $uploadedImage = $imageName;
            //     $updatedEntry->image = $upload_path . $uploadedImage;
            // }

            $updatedEntry->save();

            DB::commit();
            return $updatedEntry;
        } catch (\Throwable $th) {
            throw $th;
            DB::rollback();
        }
    }

    public function toggle($id)
    {
        $updatedEntry = PurchaseOrder::findOrFail($id);

        $status = ($updatedEntry->status == 1) ? 0 : 1;
        $updatedEntry->status = $status;
        $updatedEntry->save();

        return $updatedEntry;
    }

    public function delete($id)
    {
        PurchaseOrder::destroy($id);
    }

}
