@extends('admin.layouts.app')

@section('page', 'Offers')

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
                            <div class="col-auto">
                                <form>
                                <div class="row g-3 align-items-center">


                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="filter">
                        <div class="row align-items-center justify-content-between">
                        {{-- <div class="col">
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
                        </div> --}}
                        <div class="col-auto">
                            <p></p>
                        </div>
                        </div>
                    </div>
                    <table class="table">
                        <thead>
                            <tr>
                                <th class="check-column">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault"></label>
                                </div>
                                </th>
                                <th>Title</th>


                                <th>Date</th>
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
                                {{$item->title}}
                                <div class="row__action">
                                    <a href="{{ route('admin.offer.view', $item->id) }}">Edit</a>
                                    <a href="{{ route('admin.offer.view', $item->id) }}">View</a>
                                    {{-- <a href="{{ route('admin.offer.status', $item->id) }}">{{($item->is_current == 1) ? 'Active' : 'Inactive'}}</a> --}}
                                    <a href="{{ route('admin.offer.delete', $item->id) }}" class="text-danger">Delete</a>
                                </div>
                                </td>



                                <td>{{date('d M Y', strtotime($item->start_date))}} - {{date('d M Y', strtotime($item->end_date))}}</td>

                                <td><span class="badge bg-{{($item->is_current == 1) ? 'success' : 'danger'}}">{{($item->is_current == 1) ? 'Active' : 'Inactive'}}</span></td>
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
                    <form method="POST" action="{{ route('admin.offer.store') }}" enctype="multipart/form-data">
                    @csrf
                        <h4 class="page__subtitle">Add New</h4>
                        <div class="form-group mb-3">
                            <label class="label-control">Title <span class="text-danger">*</span> </label>
                            <input type="text" name="title" placeholder="" class="form-control" value="{{old('title')}}">
                            @error('title') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>

                        <div class="form-group mb-3">
                            <label class="label-control">Status <span class="text-danger">*</span> </label>
                            <select id="is_current" name="is_current" class="form-control">
                                <option value="">--- Select  ---</option>

                                    <option value="0">Active</option>
                                    <option value="1">Inactive</option>


                            </select>
                            @error('is_current') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>


                        <div class="form-group mb-3">
                            <label class="label-control">Start date <span class="text-danger">*</span> </label>
                            <input type="date" name="start_date" placeholder="" class="form-control" value="{{old('start_date')}}">
                            @error('start_date') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>
                        <div class="form-group mb-3">
                            <label class="label-control">End date <span class="text-danger">*</span> </label>
                            <input type="date" name="end_date" placeholder="" class="form-control" value="{{old('end_date')}}">
                            @error('end_date') <p class="small text-danger">{{ $message }}</p> @enderror
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
                        <div class="card">
                            <div class="card-header p-0 mb-3">Document <span class="text-danger">*</span></div>
                            <div class="card-body p-0">
                                <div class="form-group">
                                    <label for="upload_file" class="control-label col-sm-3">Upload File</label>
                                    <div class="col-sm-9">
                                         <input class="form-control" type="file" name="pdf" id="pdf">
                                    </div>
                               </div>
                            </div>
                            @error('pdf') <p class="small text-danger">{{ $message }}</p> @enderror
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
