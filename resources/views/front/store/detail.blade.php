@extends('layouts.app')

@section('page', 'Home')

@section('content')
<section class="store_details">
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <div class="store_image">
                    <img src="{{ asset($data->image) }}" alt="" class="w-100">
                </div>
            </div>
            <div class="col-md-5">
                <div class="store_info">
                    <h3>{{ $data->store_name }}</h3>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="store_info_id">
                                <h6 class="mb-1">OCC number</h6>
                                <p class="mb-0"><span>#{{ $data->store_OCC_number }}</span></p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="store_info_business">
                                <h6 class="mb-1">Business</h6>
                                <p class="mb-0">{{ $data->bussiness_name }}</p>
                            </div>
                        </div>
                    </div>

                    <div class="mb-0">
                        <div class="storInfoLoction">
                            <div class="storInfoLoction_icon">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="#fff" stroke="#fff" stroke-width="0" stroke-linecap="round" stroke-linejoin="round" class="feather feather-map-pin"><path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"></path><circle cx="12" stroke="#EB1C26" stroke-width="2" cy="10" r="4"></circle></svg>
                            </div>
                            <div class="storInfoLoction_text">
                                <h5 class="mb-1">{{ $data->area }}</h5>
                                <p>
                                    <span>{{ $data->address }}</span>,
                                    <span>{{ $data->state }}</span>,
                                    <span>{{ $data->city }}</span>,
                                    <span>{{ $data->pin }}</span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="storeProducts">
    <div class="storeCatgoryListWrap">
        <div class="container">
            <ul class="storeCatgoryList">
                @foreach ($category as $categoryKey => $categoryVal)
                @php
                    if($categoryVal->ProductDetails->count() == 0) {continue;}
                @endphp
                    <li><a href="#tab{{$categoryKey+1}}">{{$categoryVal->name}}</a></li>
                @endforeach
            </ul>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-12 mb-3">

                @foreach ($category as $categoryKey => $category)
                @php
                    if($category->ProductDetails->count() == 0) {continue;}
                @endphp
                    <div class="storeProduct_list" id="tab{{$categoryKey+1}}">
                        <h3>{{ $category->name }} <span>({{ $category->ProductDetails->count() }} {{ ($category->ProductDetails->count() == 1) ? 'product' : 'products' }})</span></h3>

                        <div class="row mb-3">
                        @forelse($category->ProductDetails as $categoryProductKey => $categoryProductValue)
                            @php if($categoryProductValue->status == 0) {continue;} @endphp
                            <div class="col-md-6">
                                <div class="storeProduct_card">
                                    <div class="storeProduct_card_body">
                                        @php
                                            // dd(request()->input('type'));
                                            // if (!empty(request()->input('type'))) {
                                                if (request()->input('type') == 'order-on-call') {
                                                    $type = 'order-on-call';
                                                } else {
                                                    $type = 'store-visit';
                                                }
                                            // } else {
                                            //     $type = '';
                                            // }
                                        @endphp

                                        <a href="{{ route('front.product.detail', [$categoryProductValue->slug, 'store' => $data->id, 'type' => $type]) }}" class="product__single" data-events data-cat="tshirt">
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
        </div>
    </div>
</section>
@endsection
