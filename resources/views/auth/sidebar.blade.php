<aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme bold">
    @php
        $route = request()->segments();
    @endphp
    <ul class="menu-inner py-1">
        <!-- toggle -->
        <li class="menu-item first_menu ">
            <a href="#" class="d-flex justify-content-between menu-link">
                <div class="div">
                    <div class="d-flex">
                        <div>
                            <img src="{{ asset('admin/assets/img/avatars/1.png') }}" class="img-fluid rounded-circle me-2"
                                alt="" style="width:40px;height:40px">
                        </div>
                        <div>
                            <h6 class="m-0">{{ auth()->user()->name }}</h6>
                            <p class="text-info">
                                {{-- <small>{{ ucfirst(auth()->user()->designation) }}</small> --}}
                            </p>
                        </div>
                    </div>
                </div>
            </a>
        </li>
        <li class="menu-item ">
            <a href="#" class="menu-link">
                <i class="menu-icon tf-icons bx bxs-dashboard"></i>
                <div data-i18n="Analytics">Dashboard</div>
            </a>
        </li>


        <li class="menu-header small text-uppercase">
            <span class="menu-header-text">System Module</span>
        </li>
        <li class="menu-item">
            <a href="#" class="menu-link">
                <i class="menu-icon tf-icons bx bxs-business"></i>
                <div data-i18n="Analytics">Business</div>
            </a>
        </li>
        <li class="menu-item">
            <a href="{{ url('users') }}" class="menu-link">
                <i class="menu-icon tf-icons bx bx-group"></i>
                <div data-i18n="Analytics">Users</div>
            </a>
        </li>
       
    </ul>
</aside>
