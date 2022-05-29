@extends('admin.layouts.app')

@section('page', 'Product detail')

@section('content')
<section>
    <form method="post" action="{{ route('admin.product.update', $data[0]->id) }}" enctype="multipart/form-data">@csrf
        <div class="row">
            <div class="col-sm-3">
                <div class="card shadow-sm">
                    <div class="card-header">Main image</div>
                    <div class="card-body">
                        <div class="w-100 product__thumb">
                            <label for="thumbnail"><img id="output" src="{{ asset($data[0]->image) }}"/></label>
                        </div>
                    </div>
                </div>
                <div class="card shadow-sm">
                    <div class="card-header">More images</div>
                    <div class="card-body">
                        <div class="w-100 product__thumb">
                        @foreach($images as $index => $singleImage)
                            <label for="thumbnail"><img id="output" src="{{ asset($singleImage->image) }}" class="img-thumbnail mb-3"/></label>
                        @endforeach
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-9">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <div class="form-group mb-3">
                            <h2>{{$data[0]->name}}</h2>
                        </div>
                        <div class="form-group mb-3">
                            <p><span class="text-muted">Category : </span>{{$data[0]->category->name}} | <span class="text-muted">Sub-category : </span>{{$data[0]->subCategory->name}}</p>
                        </div> 
                        
                        <hr>
                        <div class="form-group mb-3">
                            <h4>
                                <span class="text-muted small">Rs {{$data[0]->cost_price}}</span> 
                                <span class="text-danger">Rs {{$data[0]->sell_price}}</span> 
                            </h4>
                        </div>
                        <hr>
                        <div class="form-group mb-3">
                            <p class="small">Short Description</p>
                            {!! $data[0]->short_desc !!}
                        </div>
                        <hr>
                        <div class="form-group mb-3">
                            <p class="small">Description</p>
                            {!! $data[0]->desc !!}
                        </div>

                        <div class="admin__content">
                            <aside>
                                <nav>Quantity</nav>
                            </aside>
                            <content>
                                
                                <div class="row mb-2 align-items-center">
                                    <div class="col-3">
                                        <label for="inputprice6" class="col-form-label">Qty</label>
                                    </div>
                                    <div class="col-9">
                                        <p class="small">{{$data[0]->unit_value}}</p>
                                    </div>
                                </div>
                                <div class="row mb-2 align-items-center">
                                    <div class="col-3">
                                        <label for="inputprice6" class="col-form-label">Unit</label>
                                    </div>
                                    <div class="col-9">
                                        <p class="small">{{$data[0]->unit_type}}</p>
                                    </div>
                                </div>
                            </content>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</section>
@endsection

@section('script')
    <script>
        function sizeCheck(productId, colorId) {
            $.ajax({
                url : '{{route("admin.product.size")}}',
                method : 'POST',
                data : {'_token' : '{{csrf_token()}}', productId : productId, colorId : colorId},
                success : function(result) {
                    if (result.error === false) {
                        let content = '<div class="btn-group" role="group" aria-label="Basic radio toggle button group">';

                        $.each(result.data, (key, val) => {
                            content += `<input type="radio" class="btn-check" name="productSize" id="productSize${val.sizeId}" autocomplete="off"><label class="btn btn-outline-primary px-4" for="productSize${val.sizeId}">${val.sizeName}</label>`;
                        })

                        content += '</div>';

                        $('#sizeContainer').html(content);
                    }
                },
                error: function(xhr, status, error) {
                    // toastFire('danger', 'Something Went wrong');
                }
            });
        }
    </script>
@endsection