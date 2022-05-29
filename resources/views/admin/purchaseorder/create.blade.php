@extends('admin.layouts.app')

@section('page', 'Create Purcahe Order')

@section('content')
<section>
    <form method="post" action="{{ route('admin.purchaseorder.store') }}" enctype="multipart/form-data">
        @csrf
        <div class="row">
            <div class="col-sm-9">

                <div class="row mb-3">
                    <div class="col-sm-4">
                        <select class="form-control" required name="supplier_id">
                            <option hidden value="">Select supplier...</option>
                            @foreach ($suppliers as $index => $item)
                                <option value="{{$item->id}}" {{ old('supplier_id') ?? (old('supplier_id') == $item->id) ? 'selected' : ''}}>{{ $item->name }}</option>
                            @endforeach
                        </select>
                        @error('supplier_id') <p class="small text-danger">{{ $message }}</p> @enderror
                    </div>
                </div>

                <input type="hidden" required name="unique_id" id="unique_id">

                <div class="card shadow-sm">
                    <div class="card-header">
                        Details
                    </div>
                    <div class="card-body pt-0">
                        <div class="admin__content">
                            <aside>
                                <nav>Address</nav>
                            </aside>
                            <content>
                                <div class="row mb-2 align-items-center">
                                    <div class="col-3">
                                        <label for="inputPassword6" class="col-form-label">Address</label>
                                    </div>
                                    <div class="col-auto">
                                        <input type="text" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" required name="address" value="{{old('address')}}">
                                        @error('address') <p class="small text-danger">{{ $message }}</p> @enderror
                                    </div>
                                    <div class="col-auto">
                                        <span id="priceHelpInline" class="form-text">
                                        Must be 1-10 characters long.
                                        </span>
                                    </div>
                                </div>
                                <div class="row mb-2 align-items-center">
                                    <div class="col-3">
                                        <label for="inputPassword6" class="col-form-label">city</label>
                                    </div>
                                    <div class="col-auto">
                                        <input type="text" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" required name="city" value="{{old('city')}}">
                                        @error('city') <p class="small text-danger">{{ $message }}</p> @enderror
                                    </div>
                                    <div class="col-auto">
                                        <span id="priceHelpInline" class="form-text">
                                        Must be 1-10 characters long.
                                        </span>
                                    </div>
                                </div>
                                <div class="row mb-2 align-items-center">
                                    <div class="col-3">
                                        <label for="inputPassword6" class="col-form-label">state</label>
                                    </div>
                                    <div class="col-auto">
                                        <input type="text" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" required name="state" value="{{old('state')}}">
                                        @error('state') <p class="small text-danger">{{ $message }}</p> @enderror
                                    </div>
                                    <div class="col-auto">
                                        <span id="priceHelpInline" class="form-text">
                                        Must be 1-10 characters long.
                                        </span>
                                    </div>
                                </div>
                                <div class="row mb-2 align-items-center">
                                    <div class="col-3">
                                        <label for="inputPassword6" class="col-form-label">country</label>
                                    </div>
                                    <div class="col-auto">
                                        <input type="text" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" required name="country" value="{{old('country')}}">
                                        @error('country') <p class="small text-danger">{{ $message }}</p> @enderror
                                    </div>
                                    <div class="col-auto">
                                        <span id="priceHelpInline" class="form-text">
                                        Must be 1-10 characters long.
                                        </span>
                                    </div>
                                </div>
                                <div class="row mb-2 align-items-center">
                                    <div class="col-3">
                                        <label for="inputPassword6" class="col-form-label">pin</label>
                                    </div>
                                    <div class="col-auto">
                                        <input type="number" id="inputprice6" class="form-control" aria-describedby="priceHelpInline" required name="pin" value="{{old('pin')}}">
                                        @error('pin') <p class="small text-danger">{{ $message }}</p> @enderror
                                    </div>
                                    <div class="col-auto">
                                        <span id="priceHelpInline" class="form-text">
                                        Must be 1-10 characters long.
                                        </span>
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
                                        <tr>
                                            <td>
                                                <input type="text" required name="product[]" id="name" class="form-control" placeholder="Product name">
                                            </td>
                                            <td>
                                                <input type="number" required name="qty[]" id="qty" class="form-control" placeholder="Product qty">
                                            </td>
                                            <td>
                                                <select required name="unit_type[]" id="unit_type" class="form-control">
                                                    <option value="litres">Litres</option>
                                                    <option value="kgs">KGs</option>
                                                    <option value="grams">Grams</option>
                                                    <option value="oz">OZ</option>
                                                    <option value="pcs">Pieces</option>
                                                </select>
                                            </td>
                                            <td>
                                                <input type="number" required name="unit_price[]" id="unit_price" class="form-control" placeholder="Product unit price">
                                            </td>
                                            <td>
                                                <input type="number" required name="total_price[]" id="total_price" class="form-control" placeholder="Product total price">
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
                </div>

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
                {{-- <div class="card shadow-sm">
                    <div class="card-header">
                        More product images
                    </div>
                    <div class="card-body">
                        <input type="file" accept="image/*" required name="product_images[]" multiple>
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

    $("#unique_id").val(Date.now());

    $(document).on('click','.addNewTime',function(){
		var thisClickedBtn = $(this);
		thisClickedBtn.removeClass(['addNewTime','btn-success']);
		thisClickedBtn.addClass(['removeTimePrice','btn-danger']).text('X');

		var toAppend = `
        <tr>
            
            <td>
                <input type="text" required name="product[]" id="name" class="form-control" placeholder="Product name">
            </td>
            <td>
                <input type="number" required name="qty[]" id="qty" class="form-control" placeholder="Product qty">
            </td>
            <td>
                <select required name="unit_type[]" id="unit_type" class="form-control">
                    <option value="litres">Litres</option>
                    <option value="kgs">KGs</option>
                    <option value="grams">Grams</option>
                    <option value="oz">OZ</option>
                    <option value="pcs">Pieces</option>
                </select>
            </td>
            <td>
                <input type="number" required name="unit_price[]" id="unit_price" class="form-control" placeholder="Product unit price">
            </td>
            <td>
                <input type="number" required name="total_price[]" id="total_price" class="form-control" placeholder="Product total price">
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
