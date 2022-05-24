@extends('layouts.app')

@section('page', 'Home')

@section('content')
<section class="container mt-5">
    <div class="row">
        <div class="col-md-12 mb-3">
            @foreach ($category as $category)
                <div class="storeProduct_list">
                    <h3>{{ $category->name }} <span>({{ $category->ProductDetails->count() }} products)</span></h3>

                    <div class="row mb-3">
                    @forelse($category->ProductDetails as $categoryProductKey => $categoryProductValue)
                        @php if($categoryProductValue->status == 0) {continue;} @endphp
                        <div class="col-sm-6 col-md-4">
                            <div class="storeProduct_card">
                                <div class="storeProduct_card_body">
                                    <a href="{{ route('front.product.detail', $categoryProductValue->slug) }}" class="product__single" data-events data-cat="tshirt">
                                        <figure class="storeProduct_card_img">
                                            <img src="{{asset('img/product-box.png')}}" class="" />
                                        </figure>
                                        <figcaption>
                                            <h4>{{$categoryProductValue->name}}</h4>
                                            <h5>Style # {{$categoryProductValue->style_no}} <span>{{ $categoryProductValue->collection->name }}</span></h5>
                                            <h6 class="mb-0">
                                            <span class="mr_price">
                                            @if (count($categoryProductValue->colorSize) > 0)
                                                @php
                                                    $varArray = [];
                                                    foreach($categoryProductValue->colorSize as $productVariationKey => $productVariationValue) {
                                                        $varArray[] = $productVariationValue->offer_price;
                                                    }
                                                    $bigger = $varArray[0];
                                                    for ($i = 1; $i < count($varArray); $i++) {
                                                        if ($bigger < $varArray[$i]) {
                                                            $bigger = $varArray[$i];
                                                        }
                                                    }

                                                    $smaller = $varArray[0];
                                                    for ($i = 1; $i < count($varArray); $i++) {
                                                        if ($smaller > $varArray[$i]) {
                                                            $smaller = $varArray[$i];
                                                        }
                                                    }

                                                    $displayPrice = $smaller.' - '.$bigger;

                                                    if ($smaller == $bigger) $displayPrice = $smaller;
                                                @endphp
                                                &#8377;{{$displayPrice}}
                                            @else
                                                &#8377;{{$categoryProductValue->offer_price}}
                                            @endif
                                            </span>
                                            </h6>
                                        </figcaption>
                                    </a>
                                </div>
                            </div>
                        </div>
                        @empty

                    @endforelse
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</section>
@endsection
