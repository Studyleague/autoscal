<header class="header">
	<div class="logo-container">
		<a href="" class="logo">
			<img src="./img/logo.png" width="120" height="50" alt="" />
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
					<img src="img/!logged-user.jpg" alt="" class="rounded-circle" data-lock-picture="img/!logged-user.jpg" />
				</figure>
				<div class="profile-info" data-lock-name="" data-lock-email="">
					<span class="name">admin</span>
					<span class="role">administrator</span>
				</div>

				<i class="fa custom-caret"></i>
			</a>

			<div class="dropdown-menu">
				<ul class="list-unstyled mb-2">
					<li class="divider"></li>
					<li>
						<a role="menuitem" tabindex="-1" href="signin.php"><i class="fas fa-power-off"></i> Logout</a>
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
            admin
        </div>
        <div class="sidebar-toggle d-none d-md-block" data-toggle-class="sidebar-left-collapsed" data-target="html" data-fire-event="sidebar-left-toggle">
            <i class="fas fa-bars" aria-label="Toggle sidebar"></i>
        </div>
    </div>

    <div class="nano">
        <div class="nano-content">
            <nav id="menu" class="nav-main" role="navigation">
                <ul class="nav nav-main">
                    <li>
                        <a class="nav-link" href="index.php">
                            <i class="fas fa-home" aria-hidden="true"></i>
                            <span>Home</span>
                        </a>                        
                    </li>
                    <li>
                        <a class="nav-link" href="add_product.php">
                            <i class="fas fa-address-book" aria-hidden="true"></i>
                            <span>Add Product</span>
                            <span class="badge" id="pcontact">2</span>
                        </a>                        
                    </li>

                    <li>
                        <a class="nav-link" href="Gallery.php">
                            <i class="fas fa-image" aria-hidden="true"></i>
                            <span>Add Gallery</span>
                        </a>                        
                    </li>

                    <li>
                        <a class="nav-link" href="change_password.php">
                            <i class="fas fa-key" aria-hidden="true"></i>
                            <span>Change Password</span>
                        </a>                        
                    </li>
                    
                    <li>
                        <a class="nav-link" href="change_password.php">
                            <i class="fas fa-key" aria-hidden="true"></i>
                            <span>logout</span>
                        </a>                        
                    </li>
                </ul>
            </nav>
        </div>
    </div>

</aside>
<!-- end: sidebar -->