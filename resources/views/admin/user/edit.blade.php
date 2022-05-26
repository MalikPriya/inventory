@extends('admin.layouts.app')

@section('page', 'Create User')

@section('content')
<section>
    <form method="post" action="{{ route('admin.user.store') }}" enctype="multipart/form-data">@csrf
        <div class="row">
        <div class="col-sm-9">

            <div class="form-group mb-3">
                <label class="label-control">Choose Type</label>
                <select id="userFormSelect" class="form-control" name="type">
                    <option value="">Select</option>
                    <option value="1">Customer</option>
                    <option value="2">Supplier</option>
                </select>
                @error('type') <p class="small text-danger">{{ $message }}</p> @enderror
            </div>

            <div class="card shadow-sm">
                <div class="row m-3">
                    <div class="form-group col-sm-4">
                        <label for="">Name</label>
                        <input type="text" name="name" placeholder="User Name" class="form-control" value="{{old('name')}}">
                        @error('name') <p class="small text-danger">{{ $message }}</p> @enderror
                    </div>
                    <div class="form-group col-sm-4">
                        <label for="">Alias</label>
                        <input type="text" name="alias" placeholder="User alias" class="form-control" value="{{old('alias')}}">
                        @error('alias') <p class="small text-danger">{{ $message }}</p> @enderror
                    </div>
                    <div class="form-group col-sm-4">
                        <label for="">Email</label>
                        <input type="email" name="email" placeholder="User email" class="form-control" value="{{old('email')}}">
                        @error('email') <p class="small text-danger">{{ $message }}</p> @enderror
                    </div>
                    <div class="form-group col-sm-4">
                        <label for="">Mobile</label>
                        <input type="tel" name="mobile" placeholder="User mobile" class="form-control" value="{{old('mobile')}}">
                        @error('mobile') <p class="small text-danger">{{ $message }}</p> @enderror
                    </div>
                    <div class="form-group col-sm-4">
                        <label for="">whatsapp no</label>
                        <input type="tel" name="whatsapp_no" placeholder="User whatsapp no" class="form-control" value="{{old('whatsapp_no')}}">
                        @error('whatsapp_no') <p class="small text-danger">{{ $message }}</p> @enderror
                    </div>
                    <div class="form-group col-sm-4">
                        <label for="">GST Number</label>
                        <input type="tel" name="gst_number" placeholder="User GST Number" class="form-control" value="{{old('gst_number')}}">
                        @error('gst_number') <p class="small text-danger">{{ $message }}</p> @enderror
                    </div>
                    <div class="form-group col-sm-4">
                        <label for="">Credit Limit</label>
                        <input type="tel" name="credit_limit" placeholder="User GST Number" class="form-control" value="{{old('credit_limit')}}">
                        @error('credit_limit') <p class="small text-danger">{{ $message }}</p> @enderror
                    </div>
                    <div class="form-group col-sm-4">
                        <label for="">Credit days</label>
                        <input type="tel" name="credit_days" placeholder="User GST Number" class="form-control" value="{{old('credit_days')}}">
                        @error('credit_days') <p class="small text-danger">{{ $message }}</p> @enderror
                    </div>
                </div>
            </div>

            <div class="card shadow-sm">
                <div class="card-header">
                    Address
                </div>
                <div class="card-body pt-0">
                    <div class="admin__content">
                        <aside>
                            <nav>Billing Address</nav>
                        </aside>
                        <content>
                            <div class="row mb-2 align-items-center">
                                <div class="col-3">
                                    <label for="inputPassword6" class="col-form-label">Address</label>
                                </div>
                                <div class="col-auto">
                                    <input type="text" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" name="billing_address" value="{{old('billing_address')}}">
                                    @error('billing_address') <p class="small text-danger">{{ $message }}</p> @enderror
                                </div>
                                <div class="col-auto">
                                    <span id="priceHelpInline" class="form-text">
                                    Must be 1-100 characters long.
                                    </span>
                                </div>
                            </div>
                            <div class="row mb-2 align-items-center">
                                <div class="col-3">
                                    <label for="inputprice6" class="col-form-label">Landmark</label>
                                </div>
                                <div class="col-auto">
                                    <input type="text" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" name="billing_landmark" value="{{old('billing_landmark')}}">
                                    @error('billing_landmark') <p class="small text-danger">{{ $message }}</p> @enderror
                                </div>
                                <div class="col-auto">
                                    <span id="passwordHelpInline" class="form-text">
                                    Must be 1-100 characters long.
                                    </span>
                                </div>
                            </div>
                            <div class="row mb-2 align-items-center">
                                <div class="col-3">
                                    <label for="inputprice6" class="col-form-label">state</label>
                                </div>
                                <div class="col-auto">
                                    <input type="text" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" name="billing_state" value="{{old('billing_state')}}">
                                    @error('billing_state') <p class="small text-danger">{{ $message }}</p> @enderror
                                </div>
                                <div class="col-auto">
                                    <span id="passwordHelpInline" class="form-text">
                                    Must be 1-100 characters long.
                                    </span>
                                </div>
                            </div>
                            <div class="row mb-2 align-items-center">
                                <div class="col-3">
                                    <label for="inputprice6" class="col-form-label">city</label>
                                </div>
                                <div class="col-auto">
                                    <input type="text" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" name="billing_city" value="{{old('billing_city')}}">
                                    @error('billing_city') <p class="small text-danger">{{ $message }}</p> @enderror
                                </div>
                                <div class="col-auto">
                                    <span id="passwordHelpInline" class="form-text">
                                    Must be 1-100 characters long.
                                    </span>
                                </div>
                            </div>
                            <div class="row mb-2 align-items-center">
                                <div class="col-3">
                                    <label for="inputprice6" class="col-form-label">pin</label>
                                </div>
                                <div class="col-auto">
                                    <input type="number" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" name="billing_pin" value="{{old('billing_pin')}}">
                                    @error('billing_pin') <p class="small text-danger">{{ $message }}</p> @enderror
                                </div>
                                <div class="col-auto">
                                    <span id="passwordHelpInline" class="form-text">
                                    Must be 1-100 characters long.
                                    </span>
                                </div>
                            </div>
                            <div class="row mb-2 align-items-center">
                                <div class="col-3">
                                    <label for="inputprice6" class="col-form-label">country</label>
                                </div>
                                <div class="col-auto">
                                    <input type="text" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" name="billing_country" value="{{old('billing_country')}}">
                                    @error('billing_country') <p class="small text-danger">{{ $message }}</p> @enderror
                                </div>
                                <div class="col-auto">
                                    <span id="passwordHelpInline" class="form-text">
                                    Must be 1-100 characters long.
                                    </span>
                                </div>
                            </div>
                        </content>
                    </div>
                    <div class="admin__content">
                        <aside>
                            <nav>Shipping Address</nav>
                        </aside>
                        <content>
                            <div class="row mb-2 align-items-center">
                                <div class="col-3">
                                    <label for="inputPassword6" class="col-form-label">Address</label>
                                </div>
                                <div class="col-auto">
                                    <input type="text" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" name="shipping_address" value="{{old('shipping_address')}}">
                                    @error('shipping_address') <p class="small text-danger">{{ $message }}</p> @enderror
                                </div>
                                <div class="col-auto">
                                    <span id="priceHelpInline" class="form-text">
                                    Must be 1-100 characters long.
                                    </span>
                                </div>
                            </div>
                            <div class="row mb-2 align-items-center">
                                <div class="col-3">
                                    <label for="inputprice6" class="col-form-label">Landmark</label>
                                </div>
                                <div class="col-auto">
                                    <input type="text" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" name="shipping_landmark" value="{{old('shipping_landmark')}}">
                                    @error('shipping_landmark') <p class="small text-danger">{{ $message }}</p> @enderror
                                </div>
                                <div class="col-auto">
                                    <span id="passwordHelpInline" class="form-text">
                                    Must be 1-100 characters long.
                                    </span>
                                </div>
                            </div>
                            <div class="row mb-2 align-items-center">
                                <div class="col-3">
                                    <label for="inputprice6" class="col-form-label">state</label>
                                </div>
                                <div class="col-auto">
                                    <input type="text" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" name="shipping_state" value="{{old('shipping_state')}}">
                                    @error('shipping_state') <p class="small text-danger">{{ $message }}</p> @enderror
                                </div>
                                <div class="col-auto">
                                    <span id="passwordHelpInline" class="form-text">
                                    Must be 1-100 characters long.
                                    </span>
                                </div>
                            </div>
                            <div class="row mb-2 align-items-center">
                                <div class="col-3">
                                    <label for="inputprice6" class="col-form-label">city</label>
                                </div>
                                <div class="col-auto">
                                    <input type="text" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" name="shipping_city" value="{{old('shipping_city')}}">
                                    @error('shipping_city') <p class="small text-danger">{{ $message }}</p> @enderror
                                </div>
                                <div class="col-auto">
                                    <span id="passwordHelpInline" class="form-text">
                                    Must be 1-100 characters long.
                                    </span>
                                </div>
                            </div>
                            <div class="row mb-2 align-items-center">
                                <div class="col-3">
                                    <label for="inputprice6" class="col-form-label">pin</label>
                                </div>
                                <div class="col-auto">
                                    <input type="number" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" name="shipping_pin" value="{{old('shipping_pin')}}">
                                    @error('shipping_pin') <p class="small text-danger">{{ $message }}</p> @enderror
                                </div>
                                <div class="col-auto">
                                    <span id="passwordHelpInline" class="form-text">
                                    Must be 1-100 characters long.
                                    </span>
                                </div>
                            </div>
                            <div class="row mb-2 align-items-center">
                                <div class="col-3">
                                    <label for="inputprice6" class="col-form-label">country</label>
                                </div>
                                <div class="col-auto">
                                    <input type="text" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" name="shipping_country" value="{{old('shipping_country')}}">
                                    @error('shipping_country') <p class="small text-danger">{{ $message }}</p> @enderror
                                </div>
                                <div class="col-auto">
                                    <span id="passwordHelpInline" class="form-text">
                                    Must be 1-100 characters long.
                                    </span>
                                </div>
                            </div>
                        </content>
                    </div>
                </div>
            </div>

            {{-- <div class="card shadow-sm">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table table-sm" id="timePriceTable">
                                <thead>
                                    <tr>
                                        <th>Color</th>
                                        <th>Size</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <select class="form-control" name="color[]">
                                                <option value="" disabled hidden selected>Select...</option>
                                                @foreach($colors as $colorIndex => $colorValue)
                                                    <option value="{{$colorValue->id}}" @if (old('color') && in_array($colorValue,old('color'))){{('selected')}}@endif>{{$colorValue->name}}</option>
                                                @endforeach
                                            </select>
                                        </td>
                                        <td>
                                            <select class="form-control" name="size[]">
                                                <option value="" disabled hidden selected>Select...</option>
                                                @foreach($sizes as $sizeIndex => $sizeValue)
                                                    <option value="{{$sizeValue->id}}">{{$sizeValue->name}}</option>
                                                @endforeach
                                            </select>
                                        </td>
                                        <td><a class="btn btn-sm btn-success actionTimebtn addNewTime">+</a></td>
                                    </tr>
                                </tbody>
                            </table>
                            @error('time')<p class="text-danger">{{$message}}</p>@enderror
                            @error('price')<p class="text-danger">{{$message}}</p>@enderror
                        </div>
                    </div>
                </div>
            </div> --}}

        </div>
        <div class="col-sm-3">
            <div class="card shadow-sm">
            <div class="card-header">
                Craete User
            </div>
            <div class="card-body text-end">
                <button type="submit" class="btn btn-sm btn-danger">Create </button>
            </div>
            </div>
            <div class="card shadow-sm">
                <div class="card-header">
                    GST certificate image
                </div>
                <div class="card-body">
                    <div class="w-100 product__thumb">
                    <label for="thumbnail"><img id="output" src="{{ asset('admin/images/placeholder-image.jpg') }}"/></label>
                    @error('gst_file') <p class="small text-danger">{{ $message }}</p> @enderror
                    </div>
                    <input type="file" id="thumbnail" accept="image/*" name="gst_file" onchange="loadFile(event)" class="d-none">
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
            </div>

        </div>
        </div>
    </form>
</section>
@endsection

@section('script')

@endsection
