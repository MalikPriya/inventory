<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="{{ asset('admin/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="https://cdn-uicons.flaticon.com/uicons-bold-rounded/css/uicons-bold-rounded.css" rel="stylesheet">
    <link href="{{ asset('admin/css/style.css') }}" rel="stylesheet">

    <title>AGNI | Admin @yield('page')</title>
</head>

<body>
    <div class="side__bar shadow-sm">
        <div class="admin__logo">
            <div class="logo">
                <svg width="322" height="322" viewBox="0 0 322 322" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <rect x="231.711" y="47.8629" width="60" height="260" rx="30" transform="rotate(45 231.711 47.8629)" fill="#c10909" />
                    <rect x="236.66" y="137.665" width="60" height="180" rx="30" transform="rotate(45 236.66 137.665)" fill="#c10909" />
                    <rect x="141.908" y="42.9132" width="60" height="180" rx="30" transform="rotate(45 141.908 42.9132)" fill="#c10909" />
                </svg>
            </div>
            <div class="admin__info" style="width: 100% ; overflow : hidden" >
                <h1>{{ Auth()->guard('admin')->user()->name }}</h1>
                <h4 style=" overflow : hidden ; whitespace: narrow" >{{ Auth()->guard('admin')->user()->email }}</h4>
            </div>
        </div>
        <nav class="main__nav">
            

            <ul>
                <li>
                    <a href="{{ route('admin.home') }}"><i class="fi fi-br-home"></i> <span>Dashboard</span></a>
                </li>
                <li class="@if(request()->is('admin/category*') || request()->is('admin/subcategory*')) { {{'active'}} }  @endif">
                    <a href="#"><i class="fi fi-br-database"></i> <span>Master</span></a>
                    <ul>
                        <li class="{{ ( request()->is('admin/category*') ) ? 'active' : '' }}"><a href="{{ route('admin.category.index') }}">Category</a></li>
                        <li class="{{ ( request()->is('admin/subcategory*') ) ? 'active' : '' }}"><a href="{{ route('admin.subcategory.index') }}">Sub Category</a></li>
                    </ul>
                </li>
                <li class="@if(request()->is('admin/product*') || request()->is('admin/faq*')) { {{'active'}} }  @endif">
                    <a href="#"><i class="fi fi-br-cube"></i> <span>Product Management</span></a>
                    <ul>
                        <li class="{{ ( request()->is('admin/product/list*') ) ? 'active' : '' }}"><a href="{{ route('admin.product.index') }}">All Product</a></li>

                        <li class="{{ ( request()->is('admin/product/create*') ) ? 'active' : '' }}"><a href="{{ route('admin.product.create') }}">Add New</a></li>
                    </ul>
                </li>
                <li class="@if(request()->is('admin/user/list/*')) { {{'active'}} }  @endif">
                    <a href="#"><i class="fi fi-br-cube"></i> <span>Customer/Supplier Management</span></a>
                    <ul>
                        <li class="{{ ( request()->is('admin/user/list/customer*') ) ? 'active' : '' }}"><a href="{{ route('admin.user.index', 'customer') }}">Customers</a></li>

                        <li class="{{ ( request()->is('admin/user/list/supplier*') ) ? 'active' : '' }}"><a href="{{ route('admin.user.index', 'supplier') }}">Suppliers</a></li>

                        <li class="{{ ( request()->is('admin/user/create*') ) ? 'active' : '' }}"><a href="{{ route('admin.user.create') }}">Add New</a></li>
                    </ul>
                </li>
                <li class="@if(request()->is('admin/staff*')) { {{'active'}} }  @endif">
                    <a href="#"><i class="fi fi-br-cube"></i> <span>Staff Management</span></a>
                    <ul>
                        <li class="{{ ( request()->is('admin/staff') ) ? 'active' : '' }}"><a href="{{ route('admin.staff.index') }}">All Staffs</a></li>

                        <li class="{{ ( request()->is('admin/staff/create*') ) ? 'active' : '' }}"><a href="{{ route('admin.staff.create') }}">Add New</a></li>
                    </ul>
                </li>
                <li class="@if(request()->is('admin/purchaseorder*')) { {{'active'}} }  @endif">
                    <a href="#"><i class="fi fi-br-cube"></i> <span>PO</span></a>
                    <ul>
                        <li class="{{ ( request()->is('admin/purchaseorder') ) ? 'active' : '' }}"><a href="{{ route('admin.purchaseorder.index') }}">All POs</a></li>

                        <li class="{{ ( request()->is('admin/purchaseorder/create*') ) ? 'active' : '' }}"><a href="{{ route('admin.purchaseorder.create') }}">Add New</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div class="col-auto ms-auto">
            <div class="dropdown">
                <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                    {{ Auth::guard('admin')->user()->name }}
                </button>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton1">
                    {{-- <li><a class="dropdown-item" href="{{route('admin.admin.profile')}}">Profile</a></li> --}}
                    <li><a class="dropdown-item" href="#">Profile</a></li>
                    <li> <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();document.getElementById('logout-form').submit();"><i class="fi fi-br-sign-out"></i> <span>Log Out</span></a>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">@csrf</form></li>
                </ul>
            </div>
        </div>
        {{-- <div class="nav__footer">
            <a href="{{ route('logout') }}" onclick="event.preventDefault();document.getElementById('logout-form').submit();"><i class="fi fi-br-sign-out"></i> <span>Log Out</span></a>
            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                @csrf
            </form>
        </div> --}}
    </div>
    <main class="admin">
        <!--<header>
            <div class="row align-items-center">
                {{-- <div class="col-auto">
                    <input type="search" name="" class="form-control header__search" placeholder="Quick Search here">
                </div> --}}
                {{-- <div class="col-auto ms-auto">
                    <a href="#" class="notify__bell"><i class="fi fi-br-bell"></i></a>
                </div> --}}
                <div class="col-auto ms-auto">
                    <div class="dropdown">
                        <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                            {{ Auth::guard('admin')->user()->name }}
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton1">
                            <li><a class="dropdown-item" href="{{route('admin.admin.profile')}}">Profile</a></li>
                            <li> <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();document.getElementById('logout-form').submit();"><i class="fi fi-br-sign-out"></i> <span>Log Out</span></a>
                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">@csrf</form></li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>-->
        <section class="admin__title">
            <h1>@yield('page')</h1>
        </section>

        @yield('content')

        <footer>
            <div class="row">
                <div class="col-12 text-end">Agni 2021-2022</div>
            </div>
        </footer>
    </main>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="{{ asset('admin/js/bootstrap.bundle.min.js') }}"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
    <script src="https://cdn.ckeditor.com/ckeditor5/30.0.0/classic/ckeditor.js"></script>
    <script type="text/javascript" src="{{ asset('admin/js/custom.js') }}"></script>

    @yield('script')
</body>
</html>
