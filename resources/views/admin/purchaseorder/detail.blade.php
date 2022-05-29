@extends('admin.layouts.app')

@section('page', 'Purchase Order Detail')

@section('content')
<section>
    <form method="post" action="{{ route('admin.product.update', $data[0]->id) }}" enctype="multipart/form-data">@csrf
        <div class="row">

            <div class="col-sm-9">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <div class="form-group mb-3">
                            <h2>#{{$data[0]->unique_id}}</h2>
                        </div>
                        <div class="form-group mb-3">
                            <p><span class="text-muted">Supplier : </span>{{$data[0]->supplier->name}} | <span class="text-muted">Contact : </span>{{$data[0]->supplier->mobile}} | <span class="text-muted">email : </span>{{$data[0]->supplier->email}}</p>
                        </div>
                        
                        <hr>
                        

                        <div class="admin__content">
                            <aside>
                                <nav>Address Details</nav>
                            </aside>
                            <content>
                                <div class="row mb-2 align-items-center">
                                    <div class="col-3">
                                        <label for="inputPassword6" class="col-form-label">address</label>
                                    </div>
                                    <div class="col-9">
                                        <p class="small">{{$data[0]->address}}</p>
                                    </div>
                                </div>
                                <div class="row mb-2 align-items-center">
                                    <div class="col-3">
                                        <label for="inputprice6" class="col-form-label">city</label>
                                    </div>
                                    <div class="col-9">
                                        <p class="small">{{$data[0]->city}}</p>
                                    </div>
                                </div>
                                <div class="row mb-2 align-items-center">
                                    <div class="col-3">
                                        <label for="inputprice6" class="col-form-label">State</label>
                                    </div>
                                    <div class="col-9">
                                        <p class="small">{{$data[0]->state}}</p>
                                    </div>
                                </div>
                                <div class="row mb-2 align-items-center">
                                    <div class="col-3">
                                        <label for="inputprice6" class="col-form-label">country</label>
                                    </div>
                                    <div class="col-9">
                                        <p class="small">{{$data[0]->country}}</p>
                                    </div>
                                </div>
                                <div class="row mb-2 align-items-center">
                                    <div class="col-3">
                                        <label for="inputprice6" class="col-form-label">pin</label>
                                    </div>
                                    <div class="col-9">
                                        <p class="small">{{$data[0]->pin}}</p>
                                    </div>
                                </div>
                            </content>
                        </div>
                    </div>
                </div>
                <div class="card shadow-sm">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-12">
                                <table class="table table-sm" id="timePriceTable">
                                    <thead>
                                        <tr>
                                            <th>Product</th>
                                            <th>Qty</th>
                                            <th>Unit</th>
                                            <th>Unit Price</th>
                                            <th>Total Price</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($data as $item)
                                            <tr>
                                                <td>
                                                    {{$item->product}}
                                                </td>
                                                <td>
                                                    {{$item->qty}}
                                                </td>
                                                <td>
                                                    {{$item->unit}}
                                                </td>
                                                <td>
                                                    {{$item->unit_price}}
                                                </td>
                                                <td>
                                                    {{$item->total_price}}
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="card shadow-sm">
                    <div class="card-header">
                        Action
                    </div>
                    <div class="card-body text-end">
                        <a href="{{ route('admin.purchaseorder.index') }}" class="btn btn-sm btn-danger">Back to PO </a>
                    </div>
                </div>
            </div>
        </div>
    </form>
</section>
@endsection

@section('script')
    
@endsection