@extends('admin.layouts.app')

@section('page', 'User')

@section('content')
<section>
    <div class="row">
        <div class="col-sm-8">
            <div class="card">
                <div class="card-body">

                    {{-- <div class="search__filter">
                        <div class="row align-items-center justify-content-between">
                            <div class="col">
                                <ul>
                                    <li class="active"><a href="#">All <span class="count">({{$data->count()}})</span></a></li>
                                    <li><a href="#">Active <span class="count">(7)</span></a></li>
                                    <li><a href="#">Inactive <span class="count">(3)</span></a></li>
                                </ul>
                            </div>
                            <div class="col-auto">
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
                    </div>

                    <div class="filter">
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
                    </div> --}}

                    <table class="table">
                        <thead>
                            <tr>
                                <th class="check-column">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault"></label>
                                </div>
                                </th>
                                <th class="text-center"><i class="fa-fa icon"></i></th>

                                <th>Name</th>


                                <th>Contact</th>

                                <th>Status</th>
                                <th>Account Verification</th>
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
                                <td class="text-center column-thumb">

                                    @if($item->image)
                                        <img src="{{asset($item->image)}}" alt="" style="height: 100px" class="mr-4">
                                    @else
                                        <img src="{{asset('admin/images/placeholder-image.jpg')}}" alt="" class="mr-4" style="width: 100px;height: 100px;border-radius: 50%;">
                                    @endif
                                </td>
                                <td>
                                {{$item->fname.' '.$item->lname}}
                                <div class="row__action">
                                    <a href="{{ route('admin.user.view', $item->id) }}">Edit</a>
                                    <a href="{{ route('admin.user.view', $item->id) }}">View</a>
                                    <a href="{{ route('admin.user.status', $item->id) }}">{{($item->status == 1) ? 'Active' : 'Inactive'}}</a>
                                    <a href="{{ route('admin.user.delete', $item->id) }}" class="text-danger">Delete</a>
                                    <a href="{{ route('admin.user.verification', $item->id) }}">{{($item->is_verified == 1) ? 'verified' : 'not verified'}}</a>
                                </div>
                                </td>
                                <td>{{ $item->email }} <br> {{ $item->mobile }}</td>


                                <td><span class="badge bg-{{($item->status == 1) ? 'success' : 'danger'}}">{{($item->status == 1) ? 'Active' : 'Inactive'}}</span></td>
                                <td><span class="badge bg-{{($item->is_verified == 1) ? 'success' : 'danger'}}">{{($item->is_verified == 1) ? 'verified' : 'not verified'}}</span></td>
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
                    <form method="POST" action="{{ route('admin.user.store') }}" enctype="multipart/form-data">
                    @csrf
                        <h4 class="page__subtitle">Add New</h4>
                        <div class="form-group mb-3">
                            <label class="label-control">Choose Type</label>
                            <select id="userFormSelect" class="form-control">
                                <option value="customer">Customer</option>
                                <option value="supplier">Supplier</option>
                                <option value="staff">Staff</option>
                            </select>
                        </div>
                        <div class="userForm" id="customer">
                            <div class="form-group mb-3">
                                <label class="label-control">First Name <span class="text-danger">*</span> </label>
                                <input type="text" name="fname" placeholder="" class="form-control" value="{{old('fname')}}">
                                @error('fname') <p class="small text-danger">{{ $message }}</p> @enderror
                            </div>
                            
                            <div class="form-group mb-3">
                                <label class="label-control">Last Name <span class="text-danger">*</span> </label>
                                <input type="text" name="lname" placeholder="" class="form-control" value="{{old('lname')}}">
                                @error('lname') <p class="small text-danger">{{ $message }}</p> @enderror
                            </div>
                            <div class="form-group mb-3">
                                <label class="label-control">Email <span class="text-danger">*</span> </label>
                                <input type="email" name="email" placeholder="" class="form-control" value="{{old('email')}}">
                                @error('email') <p class="small text-danger">{{ $message }}</p> @enderror
                            </div>
                            <div class="form-group mb-3">
                                <label class="label-control">Alias <span class="text-danger">*</span> </label>
                                <input type="text" name="alias" placeholder="" class="form-control" value="{{old('alias')}}">
                                @error('alias') <p class="small text-danger">{{ $message }}</p> @enderror
                            </div>
                            <div class="form-group mb-3">
                                <label class="label-control">Credit Limit <span class="text-danger">*</span> </label>
                                <input type="number" name="credit_limit" placeholder="" class="form-control" value="{{old('credit_limit')}}">
                                @error('credit_limit') <p class="small text-danger">{{ $message }}</p> @enderror
                            </div>
                            <div class="form-group mb-3">
                                <label class="label-control">Credit days <span class="text-danger">*</span> </label>
                                <input type="number" name="credit_days" placeholder="" class="form-control" value="{{old('credit_days')}}">
                                @error('credit_days') <p class="small text-danger">{{ $message }}</p> @enderror
                            </div>
                            <div class="form-group mb-3">
                                <label class="label-control">Contact <span class="text-danger">*</span> </label>
                                <input type="number" name="mobile" placeholder="" class="form-control" value="{{old('mobile')}}">
                                @error('mobile') <p class="small text-danger">{{ $message }}</p> @enderror
                            </div>
                            <div class="form-group mb-3">
                                <label class="label-control">WhatsApp Number <span class="text-danger">*</span> </label>
                                <input type="number" name="whatsapp_no" placeholder="" class="form-control" value="{{old('whatsapp_no')}}">
                                @error('whatsapp_no') <p class="small text-danger">{{ $message }}</p> @enderror
                            </div>
                            <div class="form-group mb-3">
                                <label class="label-control">Gender <span class="text-danger">*</span> </label>
                                <select class="form-control" name="gender">
                                    <option value="" hidden selected>Select...</option>
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                    <option value="trans">Trans</option>
                                    <option value="other">Other</option>
                                </select>
                                @error('gender') <p class="small text-danger">{{ $message }}</p> @enderror
                            </div>
                            <div class="form-group mb-3">
                                <label class="label-control">GST Number <span class="text-danger">*</span> </label>
                                <input type="text" name="gst_number" placeholder="" class="form-control" value="{{old('gst_number')}}">
                                @error('gst_number') <p class="small text-danger">{{ $message }}</p> @enderror
                            </div>
                            <div class="form-group mb-3">
                                <label class="label-control">Password <span class="text-danger">*</span> </label>
                                <input type="password" name="password" placeholder="" class="form-control" value="{{old('password')}}">
                                @error('password') <p class="small text-danger">{{ $message }}</p> @enderror
                            </div>
                            
                            <div class="card">
                                <div class="card-header p-0 mb-3">GST image <span class="text-danger">*</span></div>
                                <div class="card-body p-0">
                                    <div class="w-100 product__thumb">
                                        <label for="thumbnail"><img id="output" src="{{ asset('admin/images/placeholder-image.jpg') }}" /></label>
                                    </div>
                                    <input type="file" name="gst_file" id="thumbnail" accept="image/*" onchange="loadFile(event)" class="d-none">
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
                                <label class="label-control">Address <span class="text-danger">*</span> </label>
                                <input type="text" name="address" placeholder="" class="form-control" value="{{old('address')}}">
                                @error('address') <p class="small text-danger">{{ $message }}</p> @enderror
                            </div>
                            <div class="form-group mb-3">
                                <label class="label-control">Landmark <span class="text-danger">*</span> </label>
                                <input type="text" name="landmark" placeholder="" class="form-control" value="{{old('landmark')}}">
                                @error('landmark') <p class="small text-danger">{{ $message }}</p> @enderror
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
                                <label class="label-control">Pin <span class="text-danger">*</span> </label>
                                <input type="number" name="pin" placeholder="" class="form-control" value="{{old('pin')}}">
                                @error('pin') <p class="small text-danger">{{ $message }}</p> @enderror
                            </div>
                            <div class="form-group mb-3">
                                <label class="label-control">Country <span class="text-danger">*</span> </label>
                                <input type="text" name="country" placeholder="" class="form-control" value="{{old('country')}}">
                                @error('country') <p class="small text-danger">{{ $message }}</p> @enderror
                            </div>
                            
                        </div>
                        <div class="userForm" id="supplier">
                            NO s fund
                        </div>
                        <div class="userForm" id="staff">
                            NOfund
                        </div>

                        <div class="form-group">
                            <button type="submit" class="btn btn-sm btn-danger">Add New</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>


@endsection
@section('script')
<script>
    
    $(function() {
        $("#staff, #supplier").hide()
        $('#userFormSelect').change(function(){
            $('.userForm').hide();
            $('#' + $(this).val()).show();
        });
    });
</script>
@endsection
