<?php

namespace App\Repositories;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Interfaces\ProductInterface;
use App\Models\Product;
use App\Models\Category;
use App\Models\ProductImage;
use App\Models\SubCategory;
use App\Traits\UploadAble;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;

class PurchaseOrderRepository implements PurchaseorderInterface
{
    use UploadAble;

    public function listAll()
    {
        return Product::all();
    }

    public function getSearchProducts(string $term)
    {
        return Product::where('name', 'LIKE', '%' . $term . '%')
            ->orWhere('offer_price', 'LIKE', '%' . $term . '%')
            ->orWhere('style_no', 'LIKE', '%' . $term . '%')
            ->orWhere('price', 'LIKE', '%' . $term . '%')
            ->get();
    }

    public function listById($id)
    {
        return Product::where('id',$id)->with('category','subcategory','collection')->get();
    }

    public function create(array $data)
    {
        // dd($data);
        DB::beginTransaction();

        try {
            $collectedData = collect($data);
            $newEntry = new Product;
            $newEntry->cat_id = $collectedData['cat_id'];
            $newEntry->sub_cat_id = $collectedData['sub_cat_id'];
            $newEntry->name = $collectedData['name'];


            // slug generate
            // $slug = \Str::slug($collectedData['name'], '-');
            // $slugExistCount = Product::where('slug', $slug)->count();
            // if ($slugExistCount > 0) $slug = $slug . '-' . ($slugExistCount + 1);
            // $newEntry->slug = $slug;

            // main image handling
            // $upload_path = "uploads/product/";
            // $image = $collectedData['image'];
            // $imageName = time() . "." . $image->getClientOriginalName();
            // $image->move($upload_path, $imageName);
            // $uploadedImage = $imageName;
            // $newEntry->image = $upload_path . $uploadedImage;
            $newEntry->save();

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
            $upload_path = "uploads/product/";
            $updatedEntry = Product::findOrFail($id);
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
            //throw $th;
            DB::rollback();
        }
    }

    public function toggle($id)
    {
        $updatedEntry = Product::findOrFail($id);

        $status = ($updatedEntry->status == 1) ? 0 : 1;
        $updatedEntry->status = $status;
        $updatedEntry->save();

        return $updatedEntry;
    }

    public function delete($id)
    {
        Product::destroy($id);
    }

}
