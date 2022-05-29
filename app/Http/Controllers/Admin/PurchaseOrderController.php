<?php

namespace App\Http\Controllers\Admin;

use App\Interfaces\PurchaseOrderInterface;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\PurchaseOrder;
use Auth;
use Illuminate\Support\Facades\Hash;

class PurchaseOrderController extends Controller
{
    // public PurchaseOrderInterface $PurchaseOrderRepository;
    public function __construct(PurchaseOrderInterface $PurchaseOrderRepository)
    {
        $this->PurchaseOrderRepository = $PurchaseOrderRepository;
    }

    public function index(Request $request)
    {
        if (!empty($request->term)) {
            $data = $this->PurchaseOrderRepository->getSearchPurchaseOrders($request->term);
        } else {
            $data = $this->PurchaseOrderRepository->listAll();
        }
        // dd($data);
        return view('admin.purchaseorder.index', compact('data'));
    }

    public function create(Request $request)
    {
        $suppliers = $this->PurchaseOrderRepository->supplierList();
        return view('admin.purchaseorder.create', compact('suppliers'));
    }

    public function store(Request $request)
    {
        // dd($request->all());

        // $request->validate([
        //     "cat_id" => "nullable|integer",
        //     "sub_cat_id" => "nullable|integer",
        //     "name" => "required|string|max:255",
        //     "short_desc" => "required",
        //     "desc" => "required",
        //     "cost_price" => "required|integer",
        //     "sell_price" => "required|integer",
        //     "unit_value" => "integer",
        //     "unit_type" => "string",
        //     "image" => "required",
        //     "product_images" => "nullable|array"
        // ]);

        $params = $request->except('_token');
        // dd($params);
        $storeData = $this->PurchaseOrderRepository->create($params);
        // dd($storeData);
        if ($storeData) {
            return redirect()->route('admin.purchaseorder.index');
        } else {
            return redirect()->route('admin.purchaseorder.create')->withInput($request->all());
        }
    }

    public function show(Request $request, $unique_id)
    {
        $data = $this->PurchaseOrderRepository->listById($unique_id);
        // dd($data);
        return view('admin.purchaseorder.detail', compact('data'));
    }
}
