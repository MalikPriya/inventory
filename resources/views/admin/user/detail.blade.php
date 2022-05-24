@extends('admin.layouts.app')

@section('page', 'User detail')

@section('content')
<section>
    <div class="row">
        <div class="col-sm-8">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-2">
                        @if($data->image)
                            <img src="{{asset($data->image)}}" alt="" style="height: 100px" class="mr-4">
                        @else
                            <img src="{{asset('admin/images/placeholder-image.jpg')}}" alt="" class="mr-4" style="width: 100px;height: 100px;border-radius: 50%;">
                        @endif
                        </div>
                        <div class="col-md-10">
                            <h3>{{ $data->fname.' '.$data->lname }}</h3>
                            <p><span class="text-muted">Gender :</span> {{ strtoupper($data->gender) }}</p>
                            <p><span class="text-muted">Email :</span> {{ $data->email }}</p>
                                <p><span class="text-muted">Contact Details:</span> {{ $data->mobile }}</p>
                                <p><span class="text-muted">WhatsApp Details:</span> {{ $data->whatsapp_no }}</p>
                                <p><span class="text-muted">Employee Id:</span> {{ $data->employee_id }}</p>
                                    {{-- <p><span class="text-muted">User Type :</span>{{($item->type == 1) ? 'Distributor' : 'Dealer' :'Sales Person'}}</p> --}}
                                    <p><span class="text-muted">User Type :</span>@switch($data->type)
                                        @case(1)
                                            Distributor
                                            @break
                                        @case(2)
                                            Dealer
                                            @break
                                        @case(3)
                                            Sales Person
                                            @break
                                    @endswitch</p>
                            <p class="small">  <p><span class="text-muted">Address : </span> {{ $data->address }}</p>
                                <p><span class="text-muted">Landmark :</span> {{ $data->landmark }}</p>
                                    <p><span class="text-muted">City :</span> {{ $data->city }}</p>
                                        <p><span class="text-muted">State :</span> {{ $data->state }}</p>
                                            <p><span class="text-muted">Pincode :</span> {{ $data->pin }}</p>
                                                <p><span class="text-muted">Aadhar Number :</span> {{ $data->aadhar_no }}</p>
                                                    <p><span class="text-muted">Pan Number :</span> {{ $data->pan_no }}</p>
                                                    <p>Published<br/>{{date('d M Y', strtotime($data->created_at))}}</p>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-sm-4">
            <div class="card">
                <div class="card-body">
                    <form method="POST" action="{{ route('admin.user.update', $data->id) }}" enctype="multipart/form-data">
                    @csrf
                        <h4 class="page__subtitle">Edit</h4>
                        <div class="form-group mb-3">
                            <label class="label-control">First Name <span class="text-danger">*</span> </label>
                            <input type="text" name="fname" placeholder="" class="form-control" value="{{$data->fname}}">
                            @error('fname') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>
                        <div class="form-group mb-3">
                            <label class="label-control">Last Name <span class="text-danger">*</span> </label>
                            <input type="text" name="lname" placeholder="" class="form-control" value="{{$data->lname}}">
                            @error('lname') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>


                        <div class="form-group mb-3">
                            <label class="label-control">Contact <span class="text-danger">*</span> </label>
                            <input type="number" name="mobile" placeholder="" class="form-control" value="{{$data->mobile}}">
                            @error('mobile') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>
                        <div class="form-group mb-3">
                            <label class="label-control">WhatsApp Number <span class="text-danger">*</span> </label>
                            <input type="number" name="whatsapp_no" placeholder="" class="form-control" value="{{$data->whatsapp_no}}">
                            @error('whatsapp_no') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>
                        <div class="form-group mb-3">
                            <label class="label-control">Gender <span class="text-danger">*</span> </label>
                            <select class="form-control" name="gender">
                                <option value="" hidden selected>Select...</option>
                                <option value="male" {{ ($data->gender == "male") ? 'selected' : '' }}>Male</option>
                                <option value="female" {{ ($data->gender == "female") ? 'selected' : '' }}>Female</option>
                                <option value="trans" {{ ($data->gender == "trans") ? 'selected' : '' }}>Trans</option>
                                <option value="other" {{ ($data->gender == "other") ? 'selected' : '' }}>Other</option>
                            </select>
                            @error('gender') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>

                        <div class="form-group mb-3">
                            <label class="label-control">Type <span class="text-danger">*</span> </label>
                            <select class="form-control" name="type">
                                <option value="" hidden selected>Select...</option>
                                <option value="1" {{ ($data->type == "1") ? 'selected' : '' }}>Distributor</option>
                                <option value="2" {{ ($data->type == "2") ? 'selected' : '' }}>Dealer</option>
                                <option value="3" {{ ($data->type == "3") ? 'selected' : '' }}>SalesPerson</option>

                            </select>
                            @error('type') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>
                        <div class="form-group mb-3">
                            <label class="label-control">Employee Id <span class="text-danger">*</span> </label>
                            <input type="text" name="employee_id" placeholder="" class="form-control" value="{{$data->employee_id}}">
                            @error('employee_id') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>
                        <div class="form-group mb-3">
                            <label class="label-control">Address <span class="text-danger">*</span> </label>
                            <input type="text" name="address" placeholder="" class="form-control" value="{{$data->address}}">
                            @error('address') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>
                        <div class="form-group mb-3">
                            <label class="label-control">Area <span class="text-danger">*</span> </label>
                            <input type="text" name="landmark" placeholder="" class="form-control" value="{{$data->landmark}}">
                            @error('landmark') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>
                        <div class="form-group mb-3">
                            <label class="label-control">State <span class="text-danger">*</span> </label>
                            <input type="text" name="state" placeholder="" class="form-control" value="{{$data->state}}">
                            @error('state') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>
                        <div class="form-group mb-3">
                            <label class="label-control">City <span class="text-danger">*</span> </label>
                            <input type="text" name="city" placeholder="" class="form-control" value="{{$data->city}}">
                            @error('city') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>
                        <div class="form-group mb-3">
                            <label class="label-control">Pincode <span class="text-danger">*</span> </label>
                            <input type="text" name="pin" placeholder="" class="form-control" value="{{$data->pin}}">
                            @error('pin') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>
                        <div class="form-group mb-3">
                            <label class="label-control">Aadhar Number <span class="text-danger">*</span> </label>
                            <input type="text" name="aadhar_no" placeholder="" class="form-control" value="{{$data->aadhar_no}}">
                            @error('aadhar_no') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>
                        <div class="form-group mb-3">
                            <label class="label-control">Pan Number <span class="text-danger">*</span> </label>
                            <input type="text" name="pan_no" placeholder="" class="form-control" value="{{$data->pan_no}}">
                            @error('pan_no') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>
                        <div class="card">
                            <div class="card-header p-0 mb-3">Image <span class="text-danger">*</span></div>
                            <div class="card-body p-0">
                                <div class="w-100 product__thumb">
                                    <label for="thumbnail"><img id="output" src="{{ asset($data->image) }}" /></label>
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
                        <div class="form-group">
                            <button type="submit" class="btn btn-sm btn-danger">Update</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
