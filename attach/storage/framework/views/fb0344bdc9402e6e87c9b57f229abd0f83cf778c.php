<style>
    ul.nav-main li.active{
        background-color: #2d3238;
    }
</style>
<header class="header">
	<div class="logo-container">
		<a href="" class="logo">
			<img src="<?php echo e(asset('admin/img/logo.png')); ?>" height="50" alt="" />
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
					<img src="<?php echo e(asset('admin/img/!logged-user.jpg')); ?>" alt="" class="rounded-circle" data-lock-picture="img/!logged-user.jpg" />
				</figure>
				<div class="profile-info" data-lock-name="" data-lock-email="">
					<span class="name"><?php echo e(Auth::guard('admin')->user()->name); ?></span>
					<span class="role">administrator</span>
				</div>

				<i class="fa custom-caret"></i>
			</a>

			<div class="dropdown-menu">
				<ul class="list-unstyled mb-2">
					<li class="divider"></li>
					<li>
						<a role="menuitem" tabindex="-1" href="<?php echo e(route('admin.logout')); ?>" onclick="event.preventDefault();document.getElementById('logout-form').submit();"><i class="fas fa-power-off"></i> Logout</a>
                        <form action="<?php echo e(route('admin.logout')); ?>" id="logout-form" method="post"><?php echo csrf_field(); ?></form>
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
                    <li class="<?php echo e('QwertyAsdf/home' == request()->path() ? 'active' : ''); ?>">
                        <a class="nav-link" href="<?php echo e(route('admin.home')); ?>">
                            <i class="fas fa-home" aria-hidden="true"></i>
                            <span>Home</span>
                        </a>
                    </li>
                    <li class="<?php echo e('QwertyAsdf/pets' == request()->path() ? 'active' : ''); ?>">
                        <a class="nav-link" href="<?php echo e(route('admin.pets')); ?>">
                            <i class="fas fa-paw" aria-hidden="true"></i>
                            <span>Pets</span>
                            
                        </a>
                    </li>
                    <li class="<?php echo e('QwertyAsdf/pending_pets' == request()->path() ? 'active' : ''); ?>">
                        <a class="nav-link" href="<?php echo e(route('admin.pending_pets')); ?>">
                            <i class="fas fa-paw" aria-hidden="true"></i>
                            <span>Pending Pets</span>
                            
                        </a>
                    </li>

                    <li class="<?php echo e('QwertyAsdf/users' == request()->path() ? 'active' : ''); ?>">
                        <a class="nav-link" href="<?php echo e(route('admin.users')); ?>">
                            <i class="fas fa-users" aria-hidden="true"></i>
                            <span>Users</span>
                            
                        </a>
                    </li>
                    
                    



                    <li class="<?php echo e('QwertyAsdf/password-change' == request()->path() ? 'active' : ''); ?>">
                        <a class="nav-link" href="<?php echo e(route('admin.password-change')); ?>">
                            <i class="fas fa-key" aria-hidden="true"></i>
                            <span>Change Password</span>
                        </a>
                    </li>

                    <li>
                        <a class="nav-link" href="<?php echo e(route('admin.logout')); ?>" onclick="event.preventDefault();document.getElementById('logout-form').submit();">
                            <i class="fas fa-sign-out-alt" aria-hidden="true"></i>
                            <span>Logout</span>
                            <form action="<?php echo e(route('admin.logout')); ?>" id="logout-form" method="post"><?php echo csrf_field(); ?></form>
                        </a>
                    </li>

                </ul>
            </nav>
        </div>
    </div>

</aside>
<!-- end: sidebar -->
<?php /**PATH E:\AQIB\c2c\pet\attach\resources\views/admin/partial/sidebar.blade.php ENDPATH**/ ?>