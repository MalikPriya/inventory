@extends('admin.layouts.app')

@section('page', 'Store')

@section('content')
<section>
    <div class="row">
        <div class="col-sm-8">
            <div class="card">
                <div class="card-body">

                    <div class="search__filter">
                        <div class="row align-items-center justify-content-between">
                            <div class="col">
                                <ul>
                                    <li class="active"><a href="#">All <span class="count">({{$data->count()}})</span></a></li>

                                </ul>
                            </div>
                        </div></div>
                            <!--<div class="col-auto">
                                <form>
                                <div class="row g-3 align-items-center">
                                    <div class="col-auto">
                                        <input type="search" name="" class="form-control" placeholder="Search here..">
                                    </div>
                                    <div class="col-auto">
                                        <button type="submit" class="btn btn-outline-danger btn-sm">Search Product</button>
                                    </div>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>-->

                 <!--   <div class="filter">
                        <div class="row align-items-center justify-content-between">
                        <div class="col">
                            <form>
                            <div class="row g-3 align-items-center">
                                <div class="col-auto">
                                <select class="form-control">
                                    <option>Bulk Action</option>
                                    <option>Delect</option>
                                </select>
                                </div>
                                <div class="col-auto">
                                <button type="submit" class="btn btn-outline-danger btn-sm">Apply</button>
                                </div>
                            </div>
                            </form>
                        </div>
                        <div class="col-auto">
                            <p>{{$data->count()}} Items</p>
                        </div>
                        </div>
                    </div> -->

                    <table class="table">
                        <thead>
                            <tr>
                                <th class="check-column">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault"></label>
                                </div>
                                </th>

                                <th>Store Name</th>
                                <th>Bussiness Name</th>
                                <th>Contact</th>
                                <th>Address</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($data as $index => $item)
                            <tr>
                                <td class="check-column">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault"></label>
                                    </div>
                                </td>

                                <td>
                                {{$item->store_name}}
                                <div class="row__action">
                                    <a href="{{ route('admin.store.view', $item->id) }}">Edit</a>
                                    <a href="{{ route('admin.store.view', $item->id) }}">View</a>
                                    <a href="{{ route('admin.store.status', $item->id) }}">{{($item->status == 1) ? 'Active' : 'Inactive'}}</a>
                                    <a href="{{ route('admin.store.delete', $item->id) }}" class="text-danger">Delete</a>
                                </div>
                                </td>
                                <td>{{$item->bussiness_name}}</td>
                                <td>{{$item->email}}<br>{{$item->contact}}</td>
                                <td>{{$item->address}}<br>{{$item->area}}<br>{{$item->city}}<br>{{$item->state}}</td>
                                <td><span class="badge bg-{{($item->status == 1) ? 'success' : 'danger'}}">{{($item->status == 1) ? 'Active' : 'Inactive'}}</span></td>

                            </tr>
                            @empty
                            <tr><td colspan="100%" class="small text-muted">No data found</td></tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="col-sm-4">
            <div class="card">
                <div class="card-body">
                    <form method="POST" action="{{ route('admin.store.store') }}" enctype="multipart/form-data">
                    @csrf
                        <h4 class="page__subtitle">Add New Store</h4>
                        <div class="form-group mb-3">
                            <label class="label-control">Store Name <span class="text-danger">*</span> </label>
                            <input type="text" name="store_name" placeholder="" class="form-control" value="{{old('store_name')}}">
                            @error('store_name') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>
                        <div class="form-group mb-3">
                            <label class="label-control">Full Name of Bussiness  <span class="text-danger">*</span> </label>
                            <input type="text" name="bussiness_name" placeholder="" class="form-control" value="{{old('bussiness_name')}}">
                            @error('bussiness_name') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>
                        <div class="form-group mb-3">
                            <label class="label-control">Store OCC Number <span class="text-danger">*</span> </label>
                            <input type="text" name="store_OCC_number" placeholder="" class="form-control" value="{{old('store_OCC_number')}}">
                            @error('store_OCC_number') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>
                        <div class="form-group mb-3">
                            <label class="label-control">Email <span class="text-danger">*</span> </label>
                            <input type="text" name="email" placeholder="" class="form-control" value="{{old('email')}}">
                            @error('email') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>
                        <div class="form-group mb-3">
                            <label class="label-control">Contact Information <span class="text-danger">*</span> </label>
                            <input type="text" name="contact" placeholder="" class="form-control" value="{{old('contact')}}">
                            @error('contact') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>
                        <div class="form-group mb-3">
                            <label class="label-control">WhatsApp Number <span class="text-danger">*</span> </label>
                            <input type="text" name="whatsapp" placeholder="" class="form-control" value="{{old('whatsapp')}}">
                            @error('whatsapp') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>
                        <div class="form-group mb-3">
                            <label class="label-control">Address <span class="text-danger">*</span> </label>
                            <input type="text" name="address" placeholder="" class="form-control" value="{{old('address')}}">
                            @error('address') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>
                        <div class="form-group mb-3">
                            <label class="label-control">Area<span class="text-danger">*</span> </label>
                            <input type="text" name="area" placeholder="" class="form-control" value="{{old('area')}}">
                            @error('area') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>
                        <div class="form-group mb-3">
                            <label class="label-control">State <span class="text-danger">*</span> </label>
                            <input type="text" name="state" placeholder="" class="form-control" value="{{old('state')}}">
                            @error('state') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>
                        <div class="form-group mb-3">
                            <label class="label-control">City <span class="text-danger">*</span> </label>
                            <input type="text" name="city" placeholder="" class="form-control" value="{{old('city')}}">
                            @error('city') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>
                        <div class="form-group mb-3">
                            <label class="label-control">Pincode <span class="text-danger">*</span> </label>
                            <input type="text" name="pin" placeholder="" class="form-control" value="{{old('pin')}}">
                            @error('pin') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>

                        <div class="card">
                            <div class="card-header p-0 mb-3">Image <span class="text-danger">*</span></div>
                            <div class="card-body p-0">
                                <div class="w-100 product__thumb">
                                    <label for="thumbnail"><img id="output" src="{{ asset('admin/images/placeholder-image.jpg') }}" /></label>
                                </div>
                                <input type="file" name="image" id="thumbnail" accept="image/*" onchange="loadFile(event)" class="d-none">
                                <script>
                                    var loadFile = function(event) {
                                        var output = document.getElementById('output');
                                        output.src = URL.createObjectURL(event.target.files[0]);
                                        output.onload = function() {
                                            URL.revokeObjectURL(output.src) // free memory
                                        }
                                    };
                                </script>
                            </div>
                            @error('image') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>

                        <div class="form-group mb-3">
                            <label class="label-control">Distributor Name<span class="text-danger">*</span> </label>
                            <select id="user_id" name="user_id" class="form-control">
                                <option value="">--- Select  ---</option>
                                @foreach ($users as $index => $item)
                            <option value="{{$item->id}}" {{ old('user_id') ?? (old('user_id') == $item->id) ? 'selected' : ''}}> {{$item->fname.' '.$item->lname}}<br></option>

                             @endforeach
                            </select>
                            @error('user_id') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>


                        <div class="form-group">
                            <button type="submit" class="btn btn-sm btn-danger">Add New Store</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
