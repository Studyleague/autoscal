@include('partial.link')
@livewireStyles()
<style>
    .owl-item{
        width: auto !important;
    }
    .dashboard-user-profile input{
        border-top-right-radius: 5px !important;
        border-bottom-right-radius: 5px !important;
    }
    .dashboard-user-profile .header-search input{
        border-left: none;
    }
</style>

<body>

@include('partial.header')

@include('partial.sub-header')

<!-- dashboard -->
<section class="mt-5">
    <div class="container">
        <div class="row">

            @if (session()->has('user_dashboard_message'))
                <div class="col-lg-12 mb-3">
                    <div class="at-alert p-2">
                        <strong>{{ session()->get('user_dashboard_message') }}</strong>
                    </div>
                </div>
            @endif

            @error('new_logo')
                <div class="col-lg-12 mb-3">
                    <div class="at-alert p-2">
                        <strong>{{ $message }}</strong>
                    </div>
                </div>
            @enderror

            <div class="col-lg-3 col-md-12 px-3 my-2">
                <div class="dashboard-user-profile h-100">
                    <div class="row justify-content-center h-100">
                        <div class="col-12 text-center px-5 align-self-center">
                            <img src="{{ $user_info->avatar ? asset($user_info->avatar) : asset('img/default-user.svg') }}" class="img-fluid profile-image" alt="">
                            <a href="" data-toggle="modal" data-target="#changeProfilePhoto"><img src="{{ asset('img/profile-camera.svg') }}" class="img-fluid camera-img" alt=""></a>
                        </div>
                        <div class="col-12 align-self-center text-center my-3">
                            <h4 class="text-20"> {{ $user_info->name }} <a href="" data-toggle="modal" data-target="#changeProfilePhoto"> <img src="{{ asset('img/pencil.svg') }}" class="img-fluid pencil-icon" alt=""></a> </h4>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-md-12 px-3 my-2">
                <div class="dashboard-user-profile h-100">
                    <div class="row justify-content-center h-100">
                        <div class="col-lg-12 px-5 align-self-center">
                            <form >
                                <div class="row my-4 justify-content-center">
                                    <div class="col-lg-2 align-self-center">
                                        <label for="user-email">Email</label>
                                    </div>
                                    <div class="col-lg-8">
                                        <div class="input-group h-100 header-search">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" style="background-color:#e9ecef !important" id="basic-addon1"> <i class="fa fa-envelope color-secondary"></i> </span>
                                            </div>
                                            <input type="email" id="user_email" name="user_email" value="{{ $user_info->email }}" readonly disabled class="form-control" aria-label="email" aria-describedby="basic-addon1">
                                            <div class="input-group-append pt-2">
                                                <a href="" style="z-index: 9;" data-toggle="modal" data-target="#changeEmail"> <img src="{{ asset('img/pencil.svg') }}" alt="" class="img-fluid"> </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row my-4 justify-content-center">
                                    <div class="col-lg-2 align-self-center">
                                        <label for="user-mobile">Number</label>
                                    </div>
                                    <div class="col-lg-8">
                                        <div class="input-group h-100 header-search">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" style="background-color:#e9ecef !important" id="basic-addon1"> <i class="fa fa-phone color-secondary"></i> </span>
                                            </div>
                                            <input type="number" id="user_mobile" name="user_mobile" value="{{ $user_info->mobile }}" readonly disabled class="form-control" aria-label="Number" aria-describedby="basic-addon1">
                                            <div class="input-group-append pt-2">
                                                <a href="" style="z-index: 9;" data-toggle="modal" data-target="#changeMobile"> <img src="{{ asset('img/pencil.svg') }}" alt="" class="img-fluid"> </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--  -->





<!-- My Wishlist -->
<section class="mt-5 pt-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h3>My Wishlist</h3>
            </div>
        </div>
        <div class="row mt-4">
            <!-- Card start -->
            <div class="col-lg-3 col-md-6 col-sm-12 w-50">
                <div class="card service-provider">
                    <img src="img/card/card-img-1.svg" class="img-fluid" alt="allynce-tech-card-img-1">
                    <div class="card-body pb-0">
                        <div class="row service-card-brand">
                            <div class="col-lg-2 px-0">
                                <img src="{{ asset('img/service-card-logo.svg') }}" class="img-fluid" alt="">
                            </div>
                            <div class="col-lg-10 px-0">
                                <strong>Studyleague it solutions</strong>
                                <p>Web Development</p>
                            </div>
                        </div>
                    </div>
                    <div class="card-body px-2 py-0">
                        <p class="card-bottom-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ultrices placerat ...</p>
                        <div class="row">
                            <div class="col-lg-6">
                                <p class="text-left">
                                    <img src="img/star.svg" class="img-fluid d-inline" alt="">
                                    <span style="color: #FFB84F;">5.0</span>
                                    <span style="color: #B1B1B1;">(19)</span>
                                </p>
                            </div>
                            <div class="col-lg-6">
                                <p class="text-right">
                                    <!-- <label for="test_checkbox" class="heart-img-blank"><img src="img/heart-empty.svg" style="cursor: pointer;" class="img-fluid" alt=""></label>
                                    <input type="checkbox" class="d-none heart-img" id="test_checkbox">
                                    <img src="img/heart-filled.svg" class="d-none img-fluid" alt=""> -->
                                    <img src="img/heart-empty.svg" style="cursor: pointer;" class="img-fluid d-inline" alt="">
                                    <!-- <img src="img/heart-filled.svg" class="img-fluid d-inline" alt=""> -->
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--  -->
            <!-- Card start -->
            <div class="col-lg-3 col-md-6 col-sm-12 w-50">
                <div class="card service-provider">
                    <img src="img/card/card-img-1.svg" class="img-fluid" alt="allynce-tech-card-img-1">
                    <div class="card-body pb-0">
                        <div class="row service-card-brand">
                            <div class="col-lg-2 px-0">
                                <img src="{{ asset('img/service-card-logo.svg') }}" class="img-fluid" alt="">
                            </div>
                            <div class="col-lg-10 px-0">
                                <strong>Studyleague it solutions</strong>
                                <p>Web Development</p>
                            </div>
                        </div>
                    </div>
                    <div class="card-body px-2 py-0">
                        <p class="card-bottom-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ultrices placerat ...</p>
                        <div class="row">
                            <div class="col-lg-6">
                                <p class="text-left">
                                    <img src="img/star.svg" class="img-fluid d-inline" alt="">
                                    <span style="color: #FFB84F;">5.0</span>
                                    <span style="color: #B1B1B1;">(19)</span>
                                </p>
                            </div>
                            <div class="col-lg-6">
                                <p class="text-right">
                                    <img src="img/heart-empty.svg" style="cursor: pointer;" class="img-fluid d-inline" alt="">
                                    <!-- <img src="img/heart-filled.svg" class="img-fluid d-inline" alt=""> -->
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--  -->



        </div>
    </div>
</section>

@include('partial.footer')
@livewireScripts()


<!-- Change Profile Photo Modal -->
<div class="modal" id="changeProfilePhoto">
    <div class="modal-dialog">
        <div class="modal-content">

             <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title text-16">Change Profile Photo</h4>
                <button type="button" class="close" data-dismiss="modal"><img src="{{ asset('img/modal-close-button.svg') }}" style="height: 20px;" class="img-fluid" alt=""></button>
            </div>

            <!-- Modal body -->
            <div class="modal-body" id="ChangeEmailStep1">
                <form enctype="multipart/form-data" action="{{ route('change-profile-photo') }}" method="post">
                    @csrf
                    <div class="form-group">
                        <label for="new_email_id">Select logo</label>
                        <input type="file" class="form-control" id="new_logo" name="new_logo" aria-describedby="logoHelp" accept="image/*">
                    </div>
                    <p class="text-center">
                        <button type="submit" class="btn btn-custom w-50">Change</button>
                    </p>
                </form>
            </div>
        </div>
    </div>
</div>



</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="js/otp2.js"></script>

<!-- Our Srevices owl carousel -->
<script>
    $('#services-header').owlCarousel({
        autoplay: false,
        center: true,
        autoplayTimeout: 4000,
        lazyLoad: true,
        autoplayHoverPause:true,
        loop: true,
        margin: 25,
        dots:false,
        nav: true,
        smartSpeed: 800,
        navText: ["<div class='nav-button owl-prev navigation-arrow'> <img src='{{ asset('img/arrow-left.png') }}'> </div>", "<div class='nav-button owl-next navigation-arrow'><img src='{{ asset('img/arrow-right.png') }}'></div>"],
        responsive: {
            0: {
                items: 3
            },
            600: {
                items: 6
            },
            1000: {
                items: 7
            }
        }
    });
</script>
<!-- Script for Scroll header -->
<!-- Sub Category Owl carousel -->
<script>
    $('#subcategory-carousel').owlCarousel({
        autoplay: true,
        center: true,
        autoplayTimeout: 4000,
        lazyLoad: true,
        autoplayHoverPause:true,
        loop: true,
        margin: 20,
        dots:false,
        nav: true,
        smartSpeed: 800,
        navText: ["<div class='nav-button owl-prev navigation-arrow'> <img src='{{ asset('img/arrow-left.png') }}'> </div>", "<div class='nav-button owl-next navigation-arrow'><img src='{{ asset('img/arrow-right.png') }}'></div>"],
        responsive: {
            0: {
                items: 2
            },
            600: {
                items: 3
            },
            1000: {
                items: 5
            }
        }
    });
</script>
<!--  -->

</html>
