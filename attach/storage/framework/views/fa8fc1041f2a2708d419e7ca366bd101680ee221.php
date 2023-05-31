<style>
    ul.nav-main li.active{
        background-color: #2d3238;
    }
</style>
<?php
$order_count = App\Models\Order::where("flag","0")->where("status","!=","6")->count() ?? 0;
$cancel_order_count = App\Models\Order::where(["flag"=>"0","status"=>"6"])->count() ?? 0;
$insuarance_count = App\Models\CarInsuarance::where("flag","0")->count() ?? 0;
$loan_count = App\Models\CarLoan::where("flag","0")->count() ?? 0;
$transfer_count = App\Models\CarTransfer::where("flag","0")->count() ?? 0;
$payment_count = App\Models\Payment::where("flag","0")->count() ?? 0;
?>
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
                    
                    <li class="<?php echo e('QwertyAsdf/models' == request()->path() ? 'active' : ''); ?>">
                        <a class="nav-link" href="<?php echo e(route('admin.models')); ?>">
                            <i class="fas fa-car" aria-hidden="true"></i>
                            <span>Models</span>
                            
                        </a>
                    </li>

                    <li class="<?php echo e('QwertyAsdf/add_partner' == request()->path() ? 'active' : ''); ?>">
                        <a class="nav-link" href="<?php echo e(route('admin.add_partner')); ?>">
                            <i class="fas fa-user" aria-hidden="true"></i>
                            <span>Partners</span>
                            
                        </a>
                    </li>

                    <li class="<?php echo e('QwertyAsdf/users' == request()->path() ? 'active' : ''); ?>">
                        <a class="nav-link" href="<?php echo e(route('admin.users')); ?>">
                            <i class="fas fa-users" aria-hidden="true"></i>
                            <span>Users</span>
                            
                        </a>
                    </li>

                    <li class="<?php echo e('QwertyAsdf/sliders' == request()->path() ? 'active' : ''); ?>">
                        <a class="nav-link" href="<?php echo e(route('admin.sliders')); ?>">
                            <i class="fas fa-image" aria-hidden="true"></i>
                            <span>Sliders</span>
                            
                        </a>
                    </li>
                    <li class="<?php echo e('QwertyAsdf/transactions' == request()->path() ? 'active' : ''); ?>">
                        <a class="nav-link" href="<?php echo e(route('admin.transactions')); ?>">
                            <i class="fas fa-book" aria-hidden="true"></i>
                            <span>Transactions</span>
                            <?php if($payment_count > 0): ?>
                            <span class="badge" id="pcontact"><?=$payment_count?></span>
                            <?php endif; ?>
                        </a>
                    </li>
                    <li class="<?php echo e('QwertyAsdf/orders' == request()->path() ? 'active' : ''); ?>">
                        <a class="nav-link" href="<?php echo e(route('admin.orders')); ?>">
                            <i class="fas fa-book" aria-hidden="true"></i>
                            <span>Leads</span>
                            <?php if($order_count > 0): ?>
                            <span class="badge" id="pcontact"><?=$order_count?></span>
                            <?php endif; ?>
                        </a>
                    </li>

                    <li class="<?php echo e('QwertyAsdf/cancel_orders' == request()->path() ? 'active' : ''); ?>">
                        <a class="nav-link" href="<?php echo e(route('admin.cancel_orders')); ?>">
                            <i class="fas fa-book" aria-hidden="true"></i>
                            <span>Cancel Leads</span>
                            <?php if($cancel_order_count > 0): ?>
                            <span class="badge" id="pcontact"><?=$cancel_order_count?></span>
                            <?php endif; ?>
                        </a>
                    </li>

                    <li class="<?php echo e('QwertyAsdf/car_insuarance' == request()->path() ? 'active' : ''); ?>">
                        <a class="nav-link" href="<?php echo e(route('admin.car_insuarance')); ?>">
                            <i class="fas fa-book" aria-hidden="true"></i>
                            <span>Car Insuarance</span>
                            <?php if($insuarance_count > 0): ?>
                            <span class="badge" id="pcontact"><?=$insuarance_count?></span>
                            <?php endif; ?>
                        </a>
                    </li>

                    <li class="<?php echo e('QwertyAsdf/car_loan' == request()->path() ? 'active' : ''); ?>">
                        <a class="nav-link" href="<?php echo e(route('admin.car_loan')); ?>">
                            <i class="fas fa-book" aria-hidden="true"></i>
                            <span>Car Loan</span>
                            <?php if($loan_count > 0): ?>
                            <span class="badge" id="pcontact"><?=$loan_count?></span>
                            <?php endif; ?>
                        </a>
                    </li>
                    <li class="<?php echo e('QwertyAsdf/car_transfer' == request()->path() ? 'active' : ''); ?>">
                        <a class="nav-link" href="<?php echo e(route('admin.car_transfer')); ?>">
                            <i class="fas fa-book" aria-hidden="true"></i>
                            <span>Car Transfer</span>
                            <?php if($transfer_count > 0): ?>
                            <span class="badge" id="pcontact"><?=$transfer_count?></span>
                            <?php endif; ?>
                        </a>
                    </li>

                    <li class="<?php echo e('QwertyAsdf/coupons' == request()->path() ? 'active' : ''); ?>">
                        <a class="nav-link" href="<?php echo e(route('admin.coupons')); ?>">
                            <i class="fas fa-tag" aria-hidden="true"></i>
                            <span>Coupons</span>
                        </a>
                    </li>


                    <li class="<?php echo e('QwertyAsdf/password-change' == request()->path() ? 'active' : ''); ?>">
                        <a class="nav-link" href="<?php echo e(route('admin.change_password')); ?>">
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
<?php /**PATH /var/www/thecarsdoctor.com/html/attach/resources/views/admin/partial/sidebar.blade.php ENDPATH**/ ?>