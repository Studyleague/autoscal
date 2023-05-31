<style>
    ul.nav-main li.active{
        background-color: #2d3238;
    }
</style>
<header class="header">
	<div class="logo-container">
		<a href="" class="logo">
			<img src="{{ asset('admin/img/logo.png') }}" height="50" alt="" />
		</a>
		<div class="d-md-none toggle-sidebar-left" data-toggle-class="sidebar-left-opened" data-target="html" data-fire-event="sidebar-left-opened">
			<i class="fas fa-bars" aria-label="Toggle sidebar"></i>
		</div>
	</div>

	<!-- start: search & user box -->
	<div class="header-right">

		<div id="userbox" class="userbox">
			<a href="#" data-toggle="dropdown">
				<figure class="profile-picture">
					<img src="{{ asset('admin/img/!logged-user.jpg') }}" alt="" class="rounded-circle" data-lock-picture="img/!logged-user.jpg" />
				</figure>
				<div class="profile-info" data-lock-name="" data-lock-email="">
					<span class="name">{{ Auth::guard('admin')->user()->name }}</span>
					<span class="role">administrator</span>
				</div>

				<i class="fa custom-caret"></i>
			</a>

			<div class="dropdown-menu">
				<ul class="list-unstyled mb-2">
					<li class="divider"></li>
					<li>
						<a role="menuitem" tabindex="-1" href="{{ route('admin.logout') }}" onclick="event.preventDefault();document.getElementById('logout-form').submit();"><i class="fas fa-power-off"></i> Logout</a>
                        <form action="{{ route('admin.logout') }}" id="logout-form" method="post">@csrf</form>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- end: search & user box -->
</header>
<!-- end: header -->

<!-- start: sidebar -->
<aside id="sidebar-left" class="sidebar-left">
    <div class="sidebar-header">
    	<div class="sidebar-title">
            Dashboard
        </div>
        <div class="sidebar-toggle d-none d-md-block" data-toggle-class="sidebar-left-collapsed" data-target="html" data-fire-event="sidebar-left-toggle">
            <i class="fas fa-bars" aria-label="Toggle sidebar"></i>
        </div>
    </div>

    <div class="nano">
        <div class="nano-content">
            <nav id="menu" class="nav-main" role="navigation">
                <ul class="nav nav-main">
                    <li class="{{ 'QwertyAsdf/home' == request()->path() ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('admin.home') }}">
                            <i class="fas fa-home" aria-hidden="true"></i>
                            <span>Home</span>
                        </a>
                    </li>
                    <li class="{{ 'QwertyAsdf/models' == request()->path() ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('admin.models') }}">
                            <i class="fas fa-car" aria-hidden="true"></i>
                            <span>Models</span>
                            {{-- {{-- <span class="badge" id="pcontact">2</span> --}}
                        </a>
                    </li>

                    <li class="{{ 'QwertyAsdf/add_partner' == request()->path() ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('admin.add_partner') }}">
                            <i class="fas fa-user" aria-hidden="true"></i>
                            <span>Partners</span>
                            {{-- <span class="badge" id="pcontact">2</span> --}}
                        </a>
                    </li>

                    <li class="{{ 'QwertyAsdf/users' == request()->path() ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('admin.users') }}">
                            <i class="fas fa-users" aria-hidden="true"></i>
                            <span>Users</span>
                            {{-- <span class="badge" id="pcontact">2</span> --}}
                        </a>
                    </li>

                    <li class="{{ 'QwertyAsdf/sliders' == request()->path() ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('admin.sliders') }}">
                            <i class="fas fa-image" aria-hidden="true"></i>
                            <span>Sliders</span>
                            {{-- <span class="badge" id="pcontact">2</span> --}}
                        </a>
                    </li>

                    <li class="{{ 'QwertyAsdf/orders' == request()->path() ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('admin.orders') }}">
                            <i class="fas fa-book" aria-hidden="true"></i>
                            <span>Orders</span>
                            <span class="badge" id="pcontact">1</span>
                        </a>
                    </li>



                    <li class="{{ 'QwertyAsdf/password-change' == request()->path() ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('admin.password-change') }}">
                            <i class="fas fa-key" aria-hidden="true"></i>
                            <span>Change Password</span>
                        </a>
                    </li>

                    <li>
                        <a class="nav-link" href="{{ route('admin.logout') }}" onclick="event.preventDefault();document.getElementById('logout-form').submit();">
                            <i class="fas fa-sign-out-alt" aria-hidden="true"></i>
                            <span>Logout</span>
                            <form action="{{ route('admin.logout') }}" id="logout-form" method="post">@csrf</form>
                        </a>
                    </li>

                </ul>
            </nav>
        </div>
    </div>

</aside>
<!-- end: sidebar -->
