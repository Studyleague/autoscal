<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" type="image/x-icon" href="img/logo/allyance-tech-logo.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/owl-carousel.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/rating.css">
    <link rel="stylesheet" href="css/otp.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Allyncetech</title>
</head>

<style>
    .owl-item{
        width: auto !important;
    }
</style>

<body>
<header class="fixed-top" style="background-color: #fff;">
    <div class="px-3 py-0" style="background-color: #fff; border-bottom: 1px solid #eee;">
        <div class="container d-flex flex-wrap px-0">
            <nav class="navbar navbar-expand-lg navbar-light p-0 w-100">
                <div class="container-fluid px-0 w-100">
                    <a href="index.html" class="navbar-brand"> <img src="img/logo/allyance-tech-logo.png" class="img-fluid" alt="allyncetech-Logo"> </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse w-100" id="navbarSupportedContent">
                        <ul class="navbar-nav h-100 m-auto">
                            <div class="input-group h-100 header-search">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1"> <i class="fa fa-search color-main"></i> </span>
                                </div>
                                <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
                                <div class="input-group-append">
                                    <a href="" class="btn btn-custom mx-2 pt-1">Search</a>
                                </div>
                            </div>
                        </ul>

                        <ul class="navbar-nav mb-2 mb-lg-0">
                            <a href="login.html" class="btn btn-white mx-2 pt-2">Become Service Provider</a>
                            <a href="login.html" class="btn btn-white mx-2 pt-2"><img src="img/header-user.png" alt="default-user"> &nbsp;Sign In</a>
                            <a href="my_vehicle.html" class="btn btn-custom mx-2 m-auto" data-toggle="modal" data-target="#joinNowModal">Join Now</a>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</header>

<!-- Trending services -->
<section class="" style="margin-top: 80px; box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.2);">
    <div class="container">
        <div class="row justify-content-center mt-4">

            <div class="col-lg-12">
                <div class="owl-carousel owl-theme" id="services-header">
                    <div class="item row">
                        <div class="col-lg-12">
                            <div class="header-text selected m-auto">
                                <strong class="services-strong">Chartered Accountancy</strong> <br>
                            </div>
                            <div class="services-dropdown">
                                <ul>
                                    <li><a href=""> Tax Consulting </a></li>
                                    <li><a href=""> Audit </a></li>
                                    <li><a href=""> Accounting </a></li>
                                    <li><a href=""> Financial Forecasting </a></li>
                                    <li><a href=""> Financial Modeling </a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="item row">
                        <div class="col-lg-12">
                            <div class="header-text m-auto">
                                <strong class="services-strong">Legal Support</strong> <br>
                            </div>
                        </div>
                    </div>
                    <div class="item row">
                        <div class="col-lg-12">
                            <div class="header-text selected m-auto">
                                <strong class="services-strong">Multimedia</strong> <br>
                            </div>
                        </div>
                    </div>
                    <div class="item row">
                        <div class="col-lg-12">
                            <div class="header-text m-auto">
                                <strong class="services-strong">Branding</strong> <br>
                            </div>
                        </div>
                    </div>
                    <div class="item row">
                        <div class="col-lg-12">
                            <div class="header-text m-auto">
                                <strong class="services-strong">Import Export</strong> <br>
                            </div>
                        </div>
                    </div>
                    <div class="item row">
                        <div class="col-lg-12">
                            <div class="header-text m-auto">
                                <strong class="services-strong">Registration</strong> <br>
                            </div>
                        </div>
                    </div>
                    <div class="item row">
                        <div class="col-lg-12">
                            <div class="header-text m-auto">
                                <strong class="services-strong">Logistics</strong> <br>
                            </div>
                        </div>
                    </div>
                    <div class="item row">
                        <div class="col-lg-12">
                            <div class="header-text m-auto">
                                <strong class="services-strong">Multimedia</strong> <br>
                            </div>
                        </div>
                    </div>
                    <div class="item row">
                        <div class="col-lg-12">
                            <div class="header-text m-auto">
                                <strong class="services-strong">Branding</strong> <br>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
<!-- Our Services -->

<!-- Navigation breadcrumb -->
<section class="my-3 ">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 navigation-breadcrumb">
                <strong><a href="index.html">Home</a></strong> <span class="color-main pt-1"> &gt; </span>
                <strong><a href="sub_category.html">Information Technology</a></strong>
                <strong> / <a href="service.html">Web Development</a></strong>
                <strong> / <a href="service_provider.html">Service Providers</a></strong>
            </div>
        </div>
    </div>
</section>
<!--  -->


<section class="mt-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-12" id="service-provider-carousel">
                <!-- Service provider carousel starts here -->
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active h-100">
                            <img class="d-block w-100 h-100" src="img/service-provider/service-provider-1.png" alt="First slide">
                        </div>
                        <div class="carousel-item h-100">
                            <img class="d-block w-100 h-100" src="img/service-provider/service-provider-2.jpg" alt="Second slide">
                        </div>
                        <div class="carousel-item h-100">
                            <img class="d-block w-100 h-100" src="img/service-provider/service-provider-3.jpg" alt="Third slide">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                <!--  -->
            </div>
            <div class="col-lg-6 col-md-12">
                <div class="row service-provider-heading">
                    <div class="col-lg-2">
                        <img src="img/service-card-logo.svg" class="img-fluid" alt="">
                    </div>
                    <div class="col-lg-10 align-self-center">
                        <h3>Studyleague it solutions</h3>
                        <!-- <p>Web Development</p> -->
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 my-3">
                        <strong>Main Category : </strong> <span>Information Technology</span>
                    </div>
                    <div class="col-lg-12 my-3">
                        <strong>Sub category : </strong> <span>Web Development</span>
                    </div>
                    <div class="col-lg-12 my-3">
                        <i class="color-main fas fa-map-marker-alt"></i> <span>Dombivali</span>
                    </div>
                    <div class="col-lg-12 align-self-center">
                        <button class="btn btn-custom w-100" style="height: 35px;">Contact Service Provider</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<!-- About section -->
<section class="mt-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h4>About The Service Provider</h4>
            </div>
            <div class="col-lg-12 my-2">
                <strong>General Description</strong>
                <p class="ml-2">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dui amet ac, viverra a turpis. Velit ut accumsan cras et suspendisse magna amet amet
                    laoreet. Congue in nisl amet, interdum vulputate nunc vitae facilisi Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dui amet ac,
                    viverra a turpis. Velit ut accumsan cras et suspendisse magna amet amet laoreet. Congue in nisl amet, interdum vulputate nunc vitae facilisi</p>
            </div>
            <div class="col-lg-12 my-2">
                <strong>Technical Description</strong>
                <p class="ml-2">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dui amet ac, viverra a turpis. Velit ut accumsan cras et suspendisse magna amet amet
                    laoreet. Congue in nisl amet, interdum vulputate nunc vitae facilisi Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dui amet ac,
                    viverra a turpis. Velit ut accumsan cras et suspendisse magna amet amet laoreet. Congue in nisl amet, interdum vulputate nunc vitae facilisi</p>
            </div>
        </div>
    </div>
</section>
<!--  -->

<!-- Review Section -->
<section class="my-5">
    <div class="container">
        <div class="row">
            <!-- avergae rating -->
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-lg-3 col-md-6 w-50">
                        <h3 class="text-20">2,144 Reviews</h3>
                    </div>
                    <div class="col-lg-9 col-md-6 w-50" style="margin-top: -10px;">
                        <span class="feedback">
                            <span class="rating float-right">
                                <span class="rating-number">4.5</span>
                                <input type="radio" name="rating1" id="rating-5"> <label for="rating-5"></label>
                                <input type="radio" name="rating1" id="rating-4"> <label for="rating-4"></label>
                                <input type="radio" name="rating1" id="rating-3"> <label for="rating-3"></label>
                                <input type="radio" name="rating1" id="rating-2"> <label for="rating-2"></label>
                                <input type="radio" name="rating1" id="rating-1"> <label for="rating-1"></label>
                            </span>
                        </span>
                    </div>
                    <div class="col-lg-12">
                        <p class="text-right"> <button class="btn btn-custom">Write Review</button> </p>
                    </div>
                </div>
            </div>
            <!--  -->
            <!-- Individual rating -->
            <div class="col-lg-12 review-section pt-3">
                <div class="row">
                    <div class="col-lg-2 col-sm-12">
                        <img src="img/rating-avatar.svg" class="img-fluid review-avatar" alt="">
                        <strong>Maria Jane</strong>
                    </div>
                    <div class="col-lg-10 col-sm-12">
                        <span class="feedback">
                            <span class="rating">
                                <span class="rating-number">4.5</span>
                                <input type="radio" name="rating2" id="rating-10"> <label for="rating-10"></label>
                                <input type="radio" name="rating2" id="rating-9"> <label for="rating-9"></label>
                                <input type="radio" name="rating2" id="rating-8"> <label for="rating-8"></label>
                                <input type="radio" name="rating2" id="rating-7"> <label for="rating-7"></label>
                                <input type="radio" name="rating2" id="rating-6"> <label for="rating-6"></label>
                            </span>
                        </span>
                    </div>
                    <div class="col-lg-12 mt-3">
                        <p>I've been working with Hafiz for more than 2 years now and I could say, he's one of the best WordPress fixer in the Fiverr
                            community. You can't go wrong. :)</p>
                    </div>
                </div>
            </div>
            <!--  -->

            <!-- Individual rating -->
            <div class="col-lg-12 review-section pt-3">
                <div class="row">
                    <div class="col-lg-2 col-sm-12">
                        <img src="img/rating-avatar.svg" class="img-fluid review-avatar" alt="">
                        <strong>Maria Jane</strong>
                    </div>
                    <div class="col-lg-10 col-sm-12">
                        <span class="feedback">
                            <span class="rating">
                                <span class="rating-number">4.5</span>
                                <input type="radio" name="rating2" id="rating-10"> <label for="rating-10"></label>
                                <input type="radio" name="rating2" id="rating-9"> <label for="rating-9"></label>
                                <input type="radio" name="rating2" id="rating-8"> <label for="rating-8"></label>
                                <input type="radio" name="rating2" id="rating-7"> <label for="rating-7"></label>
                                <input type="radio" name="rating2" id="rating-6"> <label for="rating-6"></label>
                            </span>
                        </span>
                    </div>
                    <div class="col-lg-12 mt-3">
                        <p>I've been working with Hafiz for more than 2 years now and I could say, he's one of the best WordPress fixer in the Fiverr
                            community. You can't go wrong. :)</p>
                    </div>
                </div>
            </div>
            <!--  -->

            <!-- Individual rating -->
            <div class="col-lg-12 review-section pt-3">
                <div class="row">
                    <div class="col-lg-2 col-sm-12">
                        <img src="img/rating-avatar.svg" class="img-fluid review-avatar" alt="">
                        <strong>Maria Jane</strong>
                    </div>
                    <div class="col-lg-10 col-sm-12">
                        <span class="feedback">
                            <span class="rating">
                                <span class="rating-number">4.5</span>
                                <input type="radio" name="rating2" id="rating-10"> <label for="rating-10"></label>
                                <input type="radio" name="rating2" id="rating-9"> <label for="rating-9"></label>
                                <input type="radio" name="rating2" id="rating-8"> <label for="rating-8"></label>
                                <input type="radio" name="rating2" id="rating-7"> <label for="rating-7"></label>
                                <input type="radio" name="rating2" id="rating-6"> <label for="rating-6"></label>
                            </span>
                        </span>
                    </div>
                    <div class="col-lg-12 mt-3">
                        <p>I've been working with Hafiz for more than 2 years now and I could say, he's one of the best WordPress fixer in the Fiverr
                            community. You can't go wrong. :)</p>
                    </div>
                </div>
            </div>
            <!--  -->

            <!-- Individual rating -->
            <div class="col-lg-12 review-section pt-3">
                <div class="row">
                    <div class="col-lg-2 col-sm-12">
                        <img src="img/rating-avatar.svg" class="img-fluid review-avatar" alt="">
                        <strong>Maria Jane</strong>
                    </div>
                    <div class="col-lg-10 col-sm-12">
                        <span class="feedback">
                            <span class="rating">
                                <span class="rating-number">4.5</span>
                                <input type="radio" name="rating2" id="rating-10"> <label for="rating-10"></label>
                                <input type="radio" name="rating2" id="rating-9"> <label for="rating-9"></label>
                                <input type="radio" name="rating2" id="rating-8"> <label for="rating-8"></label>
                                <input type="radio" name="rating2" id="rating-7"> <label for="rating-7"></label>
                                <input type="radio" name="rating2" id="rating-6"> <label for="rating-6"></label>
                            </span>
                        </span>
                    </div>
                    <div class="col-lg-12 mt-3">
                        <p>I've been working with Hafiz for more than 2 years now and I could say, he's one of the best WordPress fixer in the Fiverr
                            community. You can't go wrong. :)</p>
                    </div>
                </div>
            </div>
            <!--  -->
            <div class="col-lg-12">
                <strong> <a href="" class="color-main" style="text-decoration: none;"> + See more </a> </strong>
            </div>
        </div>
    </div>
</section>
<!--  -->



<!-- The Modal -->
<div class="modal" id="joinNowModal">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
            <h4 class="modal-title text-16">Login to connect with Service Provider</h4>
            <!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
            <button type="button" class="close" data-dismiss="modal"><img src="img/modal-close-button.svg" style="height: 20px;" class="img-fluid" alt=""></button>
            </div>

            <!-- Modal body -->
            <div class="modal-body" id="joinNowStep1">
                <form>
                    <div class="form-group">
                        <label for="exampleInputName">Name*</label>
                        <input type="email" class="form-control" id="exampleInputName" name="name" aria-describedby="nameHelp" placeholder="Enter Your Name">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email Id*</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" name="email" aria-describedby="emailHelp" placeholder="Enter Your Email">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Mobile No*</label>
                        <input type="number" class="form-control" id="exampleInputMobile" name="mobile" aria-describedby="mobileHelp" placeholder="Enter Phone Number">
                    </div>
                    <p class="text-center">
                        <button type="submit" class="btn btn-custom w-50">Submit</button>
                    </p>
                </form>
            </div>

            <div class="modal-body" id="joinNowStep2">
                <form>

                    <div class="form-group">
                        <div class="verification-code">
                            <label class="control-label">Verification Code</label>
                            <div class="verification-code--inputs">
                                <input type="text" maxlength="1" />
                                <input type="text" maxlength="1" />
                                <input type="text" maxlength="1" />
                                <input type="text" maxlength="1" />
                            </div>
                            <input type="hidden" id="verificationCode" />
                        </div>
                    </div>

                    <p class="text-center">
                        <button type="submit" class="btn btn-custom w-50">Send OTP</button>
                    </p>
                </form>
            </div>

            <div class="modal-body" id="joinNowStep3">
                <form>
                    <div class="form-group">
                        <h3 class="text-center">Verification Successful !</h3>
                    </div>
                    <div class="form-group text-center">
                        <label for="exampleInputPassword1">Contact Number</label>
                        <p class="text-center"><span class="w-75 " style="border-bottom: 2px solid #FF5331; ">9876543210</span></p>
                    </div>

                    <p class="text-center">
                        <button type="submit" class="btn btn-custom w-50">OK</button>
                    </p>
                </form>
            </div>

        </div>
    </div>
</div>



<footer style="background-color: #F6F6F6;">
    <div class="container">
        <div class="row pt-4 pb-2">
            <div class="col-lg-3 col-md-6 w-50">
                <img src="img/logo/allyance-tech-logo.svg" alt="" style="width: 200px;" class="img-fluid">
            </div>

            <div class="col-lg-2 col-md-6 text-14 mt-4 w-50">
                <strong style="margin: 10px 0px; cursor: pointer;font-size: 20px;" class="single-underline">Quick Links</strong>
                <ul>
                    <li>+91 1236547897</li>
                    <li>+91 1236547897</li>
                </ul>
            </div>

            <div class="col-lg-2 col-md-6 text-14 mt-4 w-50">
                <strong style="margin: 10px 0px; cursor: pointer;font-size: 20px;" class="single-underline">Quick Links</strong>
                <ul>
                    <li>Home</li>
                    <li>About Us</li>
                    <li>Contact Us</li>
                </ul>
            </div>

            <div class="col-lg-2 col-md-6 text-14 mt-4 w-50">
                <strong style="margin: 10px 0px; cursor: pointer;font-size: 20px;" class="single-underline">Social Media</strong>
                <ul>
                    <li class="fa-brands fa-facebook-square color-main"></li>
                    <li class="fa-brands fa-instagram-square color-main"></li>
                    <li class="fa-brands fa-twitter-square color-main"></li>
                    <li class="fa-brands fa-linkedin color-main"></li>
                </ul>
            </div>

            <div class="col-lg-3 col-md-6 mt-4 w-50">
                <strong style="margin: 10px 0px; cursor: pointer;font-size: 20px;" class="single-underline">Mail</strong>
                <ul>
                    <li>johndoe@gmail.com</li>
                </ul>
            </div>

        </div>
    </div>
</footer>

<section class="footer-top py-2 bg-main">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 text-center">
                <strong class="text-16 color-white my-2">© 2022, Allynce Tech</strong>
            </div>
        </div>
    </div>
</section>


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
        navText: ["<div class='nav-button owl-prev navigation-arrow'> <img src='img/arrow-left.png'> </div>", "<div class='nav-button owl-next navigation-arrow'><img src='img/arrow-right.png'></div>"],
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
        navText: ["<div class='nav-button owl-prev navigation-arrow'> <img src='img/arrow-left.png'> </div>", "<div class='nav-button owl-next navigation-arrow'><img src='img/arrow-right.png'></div>"],
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


<script>
    $(function ()
    {
        $(document).scroll(function ()
        {
            var $nav = $("#top-nav");
            $nav.toggleClass('scrolled', $(this).scrollTop() > $nav.height());
        });
    });
</script>

</html>
