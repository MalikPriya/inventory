@extends('admin.layouts.app')

@section('page', 'Create Product')

@section('content')
<section>
    <form method="post" action="{{ route('admin.product.store') }}" enctype="multipart/form-data">@csrf
        <div class="row">
        <div class="col-sm-9">

            <div class="row mb-3">
                <div class="col-sm-4">
                    <select class="form-control" name="cat_id">
                        <option hidden selected>Select category...</option>
                        @foreach ($categories as $index => $item)
                            <option value="{{$item->id}}" {{ old('cat_id') ?? (old('cat_id') == $item->id) ? 'selected' : ''}}>{{ $item->name }}</option>
                        @endforeach
                    </select>
                    @error('cat_id') <p class="small text-danger">{{ $message }}</p> @enderror
                </div>

                <div class="col-sm-4">
                    <select class="form-control" name="sub_cat_id">
                        <option hidden selected>Select sub-category...</option>
                        @foreach ($sub_categories as $index => $item)
                            <option value="{{$item->id}}" {{ (old('sub_cat_id')) ?? (old('sub_cat_id') == $item->id) ? 'selected' : ''  }}>{{ $item->name }}</option>
                        @endforeach
                    </select>
                    @error('sub_cat_id') <p class="small text-danger">{{ $message }}</p> @enderror
                </div>

                {{-- <div class="col-sm-4">
                    <select class="form-control" name="collection_id">
                        <option hidden selected>Select collection...</option>
                        @foreach ($collections as $index => $item)
                            <option value="{{$item->id}}" {{ (old('collection_id')) ?? (old('collection_id') == $item->id) ? 'selected' : ''  }}>{{ $item->name }}</option>
                        @endforeach
                    </select>
                    @error('collection_id') <p class="small text-danger">{{ $message }}</p> @enderror
                </div> --}}
            </div>

            <div class="form-group mb-3">
                <input type="text" name="name" placeholder="Add Product Title" class="form-control" value="{{old('name')}}">
                @error('name') <p class="small text-danger">{{ $message }}</p> @enderror
            </div>

            <div class="card shadow-sm">
                <div class="card-header">
                    Short Description
                </div>
                <div class="card-body">
                    <textarea id="product_short_des" name="short_desc">{{old('short_desc')}}</textarea>
                    @error('short_desc') <p class="small text-danger">{{ $message }}</p> @enderror
                </div>
            </div>

            <div class="card shadow-sm">
                <div class="card-header">
                    Description
                </div>
                <div class="card-body">
                    <textarea id="product_des" name="desc">{{old('desc')}}</textarea>
                    @error('desc') <p class="small text-danger">{{ $message }}</p> @enderror
                </div>
            </div>

            <div class="card shadow-sm">
                <div class="card-header">
                    Product data
                </div>
                <div class="card-body pt-0">
                    <div class="admin__content">
                    <aside>
                        <nav>Price</nav>
                    </aside>
                    <content>
                        <div class="row mb-2 align-items-center">
                        <div class="col-3">
                            <label for="inputPassword6" class="col-form-label">Cost Price</label>
                        </div>
                        <div class="col-auto">
                            <input type="number" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" name="cost_price" value="{{old('cost_price')}}">
                            @error('cost_price') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>
                        <div class="col-auto">
                            <span id="priceHelpInline" class="form-text">
                            Must be 1-10 characters long.
                            </span>
                        </div>
                        </div>
                        <div class="row mb-2 align-items-center">
                        <div class="col-3">
                            <label for="inputprice6" class="col-form-label">Sell Price</label>
                        </div>
                        <div class="col-auto">
                            <input type="number" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" name="sell_price" value="{{old('sell_price')}}">
                            @error('sell_price') <p class="small text-danger">{{ $message }}</p> @enderror
                        </div>
                        <div class="col-auto">
                            <span id="passwordHelpInline" class="form-text">
                            Must be 1-10 characters long.
                            </span>
                        </div>
                        </div>
                    </content>
                    </div>
                    <div class="admin__content">
                        <aside>
                            <nav>Unit</nav>
                        </aside>
                        <content>
                            <div class="row mb-2 align-items-center">
                                <div class="col-3">
                                    <label for="inputPassword6" class="col-form-label">Value</label>
                                </div>
                                <div class="col-auto">
                                    <input type="number" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" name="unit_value" value="{{old('unit_value')}}">
                                    @error('unit_value') <p class="small text-danger">{{ $message }}</p> @enderror
                                </div>
                                <div class="col-auto">
                                    <span id="priceHelpInline" class="form-text">
                                    Must be 1-20 characters long.
                                    </span>
                                </div>
                            </div>
                            <div class="row mb-2 align-items-center">
                                <div class="col-3">
                                    <label for="inputprice6" class="col-form-label">Type</label>
                                </div>
                                <div class="col-auto">
                                    {{-- <input type="text" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" name="unit_type" value="{{old('unit_type')}}"> --}}
                                    <select name="unit_type" id="unit_type" class="form-control" value="{{old('unit_type')}}">
                                        <option value="litres">Litres</option>
                                        <option value="kgs">KGs</option>
                                        <option value="grams">Grams</option>
                                        <option value="oz">OZ</option>
                                        <option value="pcs">Pieces</option>
                                    </select>

                                    @error('unit_type') <p class="small text-danger">{{ $message }}</p> @enderror
                                </div>
                                <div class="col-auto">
                                    <span id="passwordHelpInline" class="form-text">
                                    Must be 8-20 characters long.
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
                Publish
            </div>
            <div class="card-body text-end">
                <button type="submit" class="btn btn-sm btn-danger">Publish </button>
            </div>
            </div>
            <div class="card shadow-sm">
                <div class="card-header">
                    Product Main Image
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
                    More product images
                </div>
                <div class="card-body">
                    <input type="file" accept="image/*" name="product_images[]" multiple>
                    @error('product_images') <p class="small text-danger">{{ $message }}</p> @enderror
                </div>
            </div>

            {{-- <div class="card shadow-sm">
                <div class="card-header">
                    Product color
                </div>
                <div class="card-body">
                    <select class="form-control" name="color_id[]" multiple>
                        <option hidden selected>Select category...</option>
                        @foreach ($colors as $index => $item)
                            <option value="{{$item->id}}" {{ (old('color_id')) ?? (old('color_id') == $item->id) ? 'selected' : ''  }}>{{ $item->name }}</option>
                        @endforeach
                    </select>
                    @error('color_id') <p class="small text-danger">{{ $message }}</p> @enderror
                </div>
            </div> --}}

            {{-- <div class="card shadow-sm">
                <div class="card-header">
                    Product size
                </div>
                <div class="card-body">
                    <input type="file" accept="image/*" name="product_images[]" multiple>
                    @error('product_images') <p class="small text-danger">{{ $message }}</p> @enderror
                </div>
            </div> --}}
        </div>
        </div>
    </form>
</section>
@endsection

@section('script')
<script>
    ClassicEditor
    .create( document.querySelector( '#product_des' ) )
    .catch( error => {
        console.error( error );
    });
    ClassicEditor
    .create( document.querySelector( '#product_short_des' ) )
    .catch( error => {
        console.error( error );
    });

    $(document).on('click','.addNewTime',function(){
		var thisClickedBtn = $(this);
		thisClickedBtn.removeClass(['addNewTime','btn-success']);
		thisClickedBtn.addClass(['removeTimePrice','btn-danger']).text('X');

		var toAppend = `
        <tr>
            <td>
                <select class="form-control" name="color[]">
                    <option value="" hidden selected>Select...</option>
                    @foreach($colors as $colorIndex => $colorValue)
                        <option value="{{$colorValue->id}}" @if (old('color') && in_array($colorValue,old('color'))){{('selected')}}@endif>{{$colorValue->name}}</option>
                    @endforeach
                </select>
            </td>
            <td>
                <select class="form-control" name="size[]">
                    <option value="" hidden selected>Select...</option>
                    @foreach($sizes as $sizeIndex => $sizeValue)
                        <option value="{{$sizeValue->id}}">{{$sizeValue->name}}</option>
                    @endforeach
                </select>
            </td>
            <td><a class="btn btn-sm btn-success actionTimebtn addNewTime">+</a></td>
        </tr>
        `;

		$('#timePriceTable').append(toAppend);
	});

	$(document).on('click','.removeTimePrice',function(){
		var thisClickedBtn = $(this);
		thisClickedBtn.closest('tr').remove();
	});
</script>
@endsection
