@extends('admin.layouts.app')

@section('page', 'Home')

@section('content')
<section>
    <div class="row">
        <div class="col-sm-6 col-lg-3">
            <div class="card home__card bg-gradient-danger">
                <div class="card-body">
                    <h4>No of Customer <i class="fi fi-br-box-alt"></i></h4>
                    <h2>{{$data->users}}</h2>
                </div>
            </div>
        </div>

        <div class="col-sm-6 col-lg-3">
            <div class="card home__card bg-gradient-info">
                <div class="card-body">
                    <h4>Category <i class="fi fi-br-chart-histogram"></i></h4>
                    <h2>{{$data->category}}</h2>
                </div>
            </div>
        </div>

        <div class="col-sm-6 col-lg-3">
            <div class="card home__card bg-gradient-success">
                <div class="card-body">
                    <h4>Subcategory <i class="fi fi-br-user"></i></h4>
                    <h2>{{$data->subcategory}}</h2>
                </div>
            </div>
        </div>

        <div class="col-sm-6 col-lg-3">
            <div class="card home__card bg-gradient-secondary">
                <div class="card-body">
                    <h4>No of Product <i class="fi fi-br-cube"></i></h4>
                    <h2>{{$data->products->count()}}</h2>
                </div>
            </div>
        </div>
    </div>
</section>
<section>
    <div class="row">
        <div class="col-xl-6">
            <h5>Products List</h5>
            <table class="table">
                <thead>
                    <tr>
                        <th class="text-center"><i class="fi fi-br-picture"></i></th>
                        <th>Name</th>
                        <th>Category</th>
                        <th>Cost Price</th>
                        <th>Sell Price</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($data->products as $productKey => $product)
                        @php if($productKey == 5) break;  @endphp
                        <tr>
                            <td class="text-center column-thumb">
                                <img src="{{asset($product->image)}}">
                            </td>
                            <td>
                                <p style="height: 42px;overflow: hidden;text-overflow: ellipsis;margin-bottom: 0;">{{$product->name}}</p>
                                <div class="row__action">
                                    <a href="{{ route('admin.product.edit', $product->id) }}">Edit</a>
                                    <a href="{{ route('admin.product.view', $product->id) }}">View</a>
                                </div>
                            </td>
                            <td>{{$product->category ? $product->category->name : ''}}</td>
                            <td>Rs. {{$product->cost_price}}</td>
                            <td>Rs. {{$product->sell_price}}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <div class="col-xl-6">
            <h5>Purchase orders</h5>
            <table class="table">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Date</th>
                        <th>Amount</th>
                        <th>supplier</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($data->orders as $order)
                        
                        <tr>
                            <td><a href="{{ route('admin.purchaseorder.view', $order->unique_id) }}">#{{$order->unique_id}}</a></td>
                            <td>{{date('j M Y g:i A', strtotime($order->created_at))}}</td>
                            <td>Rs. {{$order->amount}}</td>
                            <td><span class="badge bg-info">{{ $order->supplier->name }}</span></td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</section>
@endsection
