@extends('layouts.app')

@section('page', 'Store')

@section('content')
<section class="store_listing">
    <div class="container">
        <div class="row">
        @forelse($data as $categoryProductKey => $categoryProductValue)
            <div class="col-lg-4 col-12">
                <div class="store_card card">
                    <div class="store_card_body">
                        @php
                            if (request()->is('store')) {
                                $type = 'store-visit';
                            } else {
                                $type = 'order-on-call';
                            }
                        @endphp
                        <a href="{{ route('front.store.detail', [$categoryProductValue->id, 'type' => $type]) }}" class="product__single" data-events data-cat="tshirt">
                            <!-- <figure class="text-center">
                                <img src="{{asset($categoryProductValue->image)}}" class="" style="height: 200px"/>
                                <h4 class="text-dark font-weight-bold">{{$categoryProductValue->style_no}}</h4>
                            </figure> -->
                            <figcaption>
                                <h5>{{$categoryProductValue->store_name}}</h5>
                                <ul>
                                    <li><span class="storeId">#{{$categoryProductValue->store_OCC_number}}</span></li>
                                    <li>{{$categoryProductValue->bussiness_name}}</li>
                                </ul>
                                <div class="storLoction">
                                    <div class="storLoction_icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="#34acc0" stroke="#fff" stroke-width="0" stroke-linecap="round" stroke-linejoin="round" class="feather feather-map-pin"><path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"></path><circle cx="12" stroke-width="2" cy="10" r="4"></circle></svg>
                                    </div>
                                    <div class="storLoction_text">
                                        <h6 class="mb-1">{{$categoryProductValue->area}}</h6>
                                        <p class="text-muted mb-0"> {{$categoryProductValue->address}}, {{$categoryProductValue->state}}, {{$categoryProductValue->city}} {{$categoryProductValue->pin}}</p>
                                        @if (request()->is('order-on-call'))
                                            <a href="tel:{{ $categoryProductValue->contact }}">{{$categoryProductValue->contact}}</a>
                                        @endif
                                    </div>
                                </div>
                            </figcaption>
                        </a>
                    </div>
                </div>
            </div>
            @empty

        @endforelse
        </div>
    </div>
</section>
@endsection
