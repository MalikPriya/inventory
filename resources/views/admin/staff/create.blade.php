@extends('admin.layouts.app')

@section('page', 'Create Staff')

@section('content')
<section>
    <form method="post" action="{{ route('admin.user.store') }}" enctype="multipart/form-data">@csrf
        <div class="row">
        <div class="col-sm-9">

            <div class="card shadow-sm">
                <div class="row m-3">
                    <div class="form-group col-sm-4 mb-3">
                        <label for="">Name</label>
                        <input type="text" name="name" placeholder="User Name" class="form-control" value="{{old('name')}}">
                        @error('name') <p class="small text-danger">{{ $message }}</p> @enderror
                    </div>
                    <div class="form-group col-sm-4 mb-3">
                        <label for="">Official name</label>
                        <input type="text" name="official_name" placeholder="User official name" class="form-control" value="{{old('official_name')}}">
                        @error('official_name') <p class="small text-danger">{{ $message }}</p> @enderror
                    </div>
                    <div class="form-group col-sm-4 mb-3">
                        <label for="">Alias</label>
                        <input type="text" name="alias" placeholder="User alias" class="form-control" value="{{old('alias')}}">
                        @error('alias') <p class="small text-danger">{{ $message }}</p> @enderror
                    </div>
                    <div class="form-group col-sm-4 mb-3">
                        <label for="">Email</label>
                        <input type="email" name="email" placeholder="User email" class="form-control" value="{{old('email')}}">
                        @error('email') <p class="small text-danger">{{ $message }}</p> @enderror
                    </div>
                    <div class="form-group col-sm-4 mb-3">
                        <label for="">Mobile</label>
                        <input type="tel" name="mobile" placeholder="User mobile" class="form-control" value="{{old('mobile')}}">
                        @error('mobile') <p class="small text-danger">{{ $message }}</p> @enderror
                    </div>
                    
                    <div class="form-group col-sm-4 mb-3">
                        <label for="">Aadhar Number</label>
                        <input type="number" name="gst_number" placeholder="User GST Number" class="form-control" value="{{old('gst_number')}}">
                        @error('gst_number') <p class="small text-danger">{{ $message }}</p> @enderror
                    </div>
                    <div class="form-group col-sm-4 mb-3">
                        <label for="">Salary</label>
                        <input type="tel" name="salary" placeholder="User GST Number" class="form-control" value="{{old('salary')}}">
                        @error('salary') <p class="small text-danger">{{ $message }}</p> @enderror
                    </div>
                    <div class="form-group col-sm-4 mb-3">
                        <label for="">Designition</label>
                        <input type="tel" name="designa" placeholder="User GST Number" class="form-control" value="{{old('designa')}}">
                        @error('designa') <p class="small text-danger">{{ $message }}</p> @enderror
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
                            <nav>Allowance</nav>
                        </aside>
                        <content>
                            <div class="row mb-2 align-items-center">
                                <div class="col-3">
                                    <label for="inputPassword6" class="col-form-label">House Rent</label>
                                </div>
                                <div class="col-auto">
                                    <input type="text" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" name="house_rent" value="{{old('house_rent')}}">
                                    @error('house_rent') <p class="small text-danger">{{ $message }}</p> @enderror
                                </div>
                                <div class="col-auto">
                                    <span id="priceHelpInline" class="form-text">
                                    Must be 1-100 characters long.
                                    </span>
                                </div>
                            </div>
                            <div class="row mb-2 align-items-center">
                                <div class="col-3">
                                    <label for="inputprice6" class="col-form-label">Convenience</label>
                                </div>
                                <div class="col-auto">
                                    <input type="text" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" name="convenience" value="{{old('convenience')}}">
                                    @error('convenience') <p class="small text-danger">{{ $message }}</p> @enderror
                                </div>
                                <div class="col-auto">
                                    <span id="passwordHelpInline" class="form-text">
                                    Must be 1-100 characters long.
                                    </span>
                                </div>
                            </div>
                            <div class="row mb-2 align-items-center">
                                <div class="col-3">
                                    <label for="inputprice6" class="col-form-label">Dearness</label>
                                </div>
                                <div class="col-auto">
                                    <input type="text" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" name="dearness" value="{{old('dearness')}}">
                                    @error('dearness') <p class="small text-danger">{{ $message }}</p> @enderror
                                </div>
                                <div class="col-auto">
                                    <span id="passwordHelpInline" class="form-text">
                                    Must be 1-100 characters long.
                                    </span>
                                </div>
                            </div>
                            <div class="row mb-2 align-items-center">
                                <div class="col-3">
                                    <label for="inputprice6" class="col-form-label">Medical</label>
                                </div>
                                <div class="col-auto">
                                    <input type="text" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" name="medical" value="{{old('medical')}}">
                                    @error('medical') <p class="small text-danger">{{ $message }}</p> @enderror
                                </div>
                                <div class="col-auto">
                                    <span id="passwordHelpInline" class="form-text">
                                    Must be 1-100 characters long.
                                    </span>
                                </div>
                            </div>
                            <div class="row mb-2 align-items-center">
                                <div class="col-3">
                                    <label for="inputprice6" class="col-form-label">Overtime</label>
                                </div>
                                <div class="col-auto">
                                    <input type="number" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" name="overtime" value="{{old('overtime')}}">
                                    @error('overtime') <p class="small text-danger">{{ $message }}</p> @enderror
                                </div>
                                <div class="col-auto">
                                    <span id="passwordHelpInline" class="form-text">
                                    Must be 1-100 characters long.
                                    </span>
                                </div>
                            </div>
                            <div class="row mb-2 align-items-center">
                                <div class="col-3">
                                    <label for="inputprice6" class="col-form-label">City Compensatory</label>
                                </div>
                                <div class="col-auto">
                                    <input type="text" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" name="city_compensatory" value="{{old('city_compensatory')}}">
                                    @error('city_compensatory') <p class="small text-danger">{{ $message }}</p> @enderror
                                </div>
                                <div class="col-auto">
                                    <span id="passwordHelpInline" class="form-text">
                                    Must be 1-100 characters long.
                                    </span>
                                </div>
                            </div>
                            <div class="row mb-2 align-items-center">
                                <div class="col-3">
                                    <label for="inputprice6" class="col-form-label">Project</label>
                                </div>
                                <div class="col-auto">
                                    <input type="text" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" name="project" value="{{old('project')}}">
                                    @error('project') <p class="small text-danger">{{ $message }}</p> @enderror
                                </div>
                                <div class="col-auto">
                                    <span id="passwordHelpInline" class="form-text">
                                    Must be 1-100 characters long.
                                    </span>
                                </div>
                            </div>
                            <div class="row mb-2 align-items-center">
                                <div class="col-3">
                                    <label for="inputprice6" class="col-form-label">Food</label>
                                </div>
                                <div class="col-auto">
                                    <input type="text" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" name="food" value="{{old('food')}}">
                                    @error('food') <p class="small text-danger">{{ $message }}</p> @enderror
                                </div>
                                <div class="col-auto">
                                    <span id="passwordHelpInline" class="form-text">
                                    Must be 1-100 characters long.
                                    </span>
                                </div>
                            </div>
                            <div class="row mb-2 align-items-center">
                                <div class="col-3">
                                    <label for="inputprice6" class="col-form-label">Special</label>
                                </div>
                                <div class="col-auto">
                                    <input type="text" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" name="special" value="{{old('special')}}">
                                    @error('special') <p class="small text-danger">{{ $message }}</p> @enderror
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
                            <nav>Staff Details</nav>
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
                </div>
            </div>

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
                    Image
                </div>
                <div class="card-body">
                    <div class="w-100 product__thumb">
                    <label for="thumbnail"><img id="output" src="{{ asset('admin/images/placeholder-image.jpg') }}"/></label>
                    @error('image') <p class="small text-danger">{{ $message }}</p> @enderror
                    </div>
                    <input type="file" id="thumbnail" accept="image/*" name="image" onchange="loadFile(event)" class="d-none">
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
            <div class="card shadow-sm">
                <div class="card-header">
                    User ID Front
                </div>
                <div class="card-body">
                    <div class="w-100 product__thumb">
                        <label for="thumbnail"><img id="output1" src="{{ asset('admin/images/placeholder-image.jpg') }}"/></label>
                        @error('user_id_front') <p class="small text-danger">{{ $message }}</p> @enderror
                    </div>
                    <input type="file" id="thumbnail" accept="image/*" name="user_id_front" onchange="loadFile1(event)" class="d-none">
                    <script>
                    var loadFile1 = function(event) {
                        var output1 = document.getElementById('output1');
                        output1.src = URL.createObjectURL(event.target.files[0]);
                        output1.onload = function() {
                            URL.revokeObjectURL(output1.src) // free memory
                        }
                    };
                    </script>
                </div>
            </div>
            <div class="card shadow-sm">
                <div class="card-header">
                    User ID Back
                </div>
                <div class="card-body">
                    <div class="w-100 product__thumb">
                    <label for="thumbnail"><img id="output2" src="{{ asset('admin/images/placeholder-image.jpg') }}"/></label>
                    @error('user_id_back') <p class="small text-danger">{{ $message }}</p> @enderror
                    </div>
                    <input type="file" id="thumbnail" accept="image/*" name="user_id_back" onchange="loadFile2(event)" class="d-none">
                    <script>
                    var loadFile2 = function(event) {
                        var output2 = document.getElementById('output2');
                        output2.src = URL.createObjectURL(event.target.files[0]);
                        output2.onload = function() {
                            URL.revokeObjectURL(output2.src) // free memory
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
