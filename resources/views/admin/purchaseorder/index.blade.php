@extends('admin.layouts.app')

@section('page', 'Products')

@section('content')
<section>
    <div class="search__filter">
        <div class="row align-items-center justify-content-between">
        <div class="col">
            <ul>
                <li class="active"><a href="{{ route('admin.product.index') }}">All <span class="count">({{$data->count()}})</span></a></li>
                @php
                    $activeCount = $inactiveCount = 0;
                    foreach ($data as $catKey => $catVal) {
                        if ($catVal->status == 1) $activeCount++;
                        else $inactiveCount++;
                    }
                @endphp
                <li><a href="{{ route('admin.purchaseorder.index', ['status' => 'active'])}}">Active <span class="count">({{$activeCount}})</span></a></li>
                <li><a href="{{ route('admin.purchaseorder.index', ['status' => 'inactive'])}}">Inactive <span class="count">({{$inactiveCount}})</span></a></li>
            </ul>
        </div>
        <div class="col-auto">
            <form action="{{ route('admin.purchaseorder.index') }}">
            <div class="row g-3 align-items-center">
                <div class="col-auto">
                <input type="search" name="term" id="term" class="form-control" placeholder="Search here.." value="{{app('request')->input('term')}}" autocomplete="off">
                </div>
                <div class="col-auto">
                <button type="submit" class="btn btn-outline-danger btn-sm">Search</button>
                </div>
            </div>
            </form>
        </div>
        </div>
    </div>
    <form action="{{ route('admin.product.bulkDestroy') }}">
        <div class="filter">
            <div class="row align-items-center justify-content-between">
                <div class="col">
                    <div class="row g-3 align-items-center">
                        <div class="col-auto">
                            <select name="bulk_action" class="form-control">
                                <option value=" hidden selected">Bulk Action</option>
                                <option value="delete">Delete</option>
                            </select>
                        </div>
                        <div class="col-auto">
                            <button type="submit" class="btn btn-outline-danger btn-sm">Apply</button>
                        </div>
                    </div>
                </div>
                <div class="col-auto">
                    @php
                    if (!empty($_GET['status'])) {
                        if ($_GET['status'] == 'active') {
                            ($activeCount>1) ? $itemShow = 'Items' : $itemShow = 'Item';
                            echo '<p>'.$activeCount.' '.$itemShow.'</p>';
                        } elseif ($_GET['status'] == 'inactive') {
                            ($inactiveCount>1) ? $itemShow = 'Items' : $itemShow = 'Item';
                            echo '<p>'.$inactiveCount.' '.$itemShow.'</p>';
                        }
                    } else {
                        ($data->count() > 1) ? $itemShow = 'Items' : $itemShow = 'Item';
                        echo '<p>'.$data->count().' '.$itemShow.'</p>';
                    }
                    @endphp
                    {{-- <p>{{$data->count()}} {{ ($data->count() > 1) ? 'Items' : 'Item' }}</p> --}}
                </div>
            </div>
        </div>

        <table class="table">
            <thead>
            <tr>
                <th class="check-column">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="flexCheckDefault" onclick="headerCheckFunc()">
                        <label class="form-check-label" for="flexCheckDefault"></label>
                    </div>
                </th>
                {{-- <th class="text-center"><i class="fi fi-br-picture"></i></th> --}}
                <th>ID</th>
                <th>Amount</th>
                <th>Supplier</th>
                <th>Date</th>
            </tr>
            </thead>
            <tbody>
                @forelse ($data as $index => $item)
                {{-- @php
                    if (!empty($_GET['status'])) {
                        if ($_GET['status'] == 'active') {
                            if ($item->status == 0) continue;
                        } else {
                            if ($item->status == 1) continue;
                        }
                    }
                @endphp --}}
                <tr>
                    <td class="check-column">
                        <input name="delete_check[]" class="tap-to-delete" type="checkbox" onclick="clickToRemove()" value="{{$item->id}}"
                        @php
                        if (old('delete_check')) {
                            if (in_array($item->id, old('delete_check'))) {
                                echo 'checked';
                            }
                        }
                        @endphp>
                    </td>
                    <td>
                        #{{$item->unique_id}}
                        <div class="row__action">
                            <a href="#">Edit</a>
                            <a href="{{ route('admin.purchaseorder.view', $item->unique_id) }}">View</a>
                            {{-- <a href="#">{{($item->status == 1) ? 'Active' : 'Inactive'}}</a> --}}
                            <a href="#" class="text-danger">Delete</a>
                        </div>
                    </td>
                    <td>
                        Rs. {{$item->amount}}
                    </td>
                    <td>
                        {{$item->supplier->name}}
                    </td>
                    <td>Published<br/>{{date('d M Y', strtotime($item->created_at))}}</td>
                </tr>
                @empty
                <tr><td colspan="100%" class="small text-muted text-center">No data found</td></tr>
                @endforelse
            </tbody>
        </table>
    </form>
</section>
@endsection
