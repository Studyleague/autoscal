<script src="{{ asset('js/otp2.js') }}"></script>

<footer style="background-color: #F6F6F6;">
    <div class="container">
        <div class="row pt-4 pb-2">
            <div class="col-lg-3 col-md-6 w-50">
                <img src="{{ asset('img/logo/allyance-tech-logo.svg') }}" alt="" style="width: 200px;" class="img-fluid">
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


<!-- Change Email Modal -->
<div class="modal" id="changeEmail">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-header">
                <h4 class="modal-title text-16">Change Email Id</h4>
                <button type="button" class="close" data-dismiss="modal"><img src="{{ asset('img/modal-close-button.svg') }}" style="height: 20px;" wire:model.defer="email"  class="img-fluid" alt=""></button>
            </div>
            {{--  --}}
            @livewire('change-email')
            {{--  --}}
        </div>
    </div>
</div>

<!-- Change Mobile Modal -->
<div class="modal" id="changeMobile">
    <div class="modal-dialog">
        <div class="modal-content">
             <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title text-16">Change Mobile Number</h4>
                <button type="button" class="close" data-dismiss="modal"><img src="{{ asset('img/modal-close-button.svg') }}" style="height: 20px;" class="img-fluid" alt=""></button>
            </div>
            <!-- Modal body -->
            @livewire('change-mobile')

        </div>
    </div>
</div>

<!-- Become service provider Modal -->
<div class="modal" id="vendorModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
            <h4 class="modal-title text-16">Join to become Service Provider</h4>
            <button type="button" class="close" data-dismiss="modal"><img src="{{ asset('img/modal-close-button.svg') }}" style="height: 20px;" class="img-fluid" alt=""></button>
            </div>

            @livewire('vendor-register')

        </div>
    </div>
</div>
<!--  -->

<!-- The Join Modal -->
<div class="modal" id="joinNowModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
            <h4 class="modal-title text-16">Login to connect with Service Provider</h4>
            <!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
            <button type="button" class="close" data-dismiss="modal"><img src="{{ asset('img/modal-close-button.svg') }}" style="height: 20px;" class="img-fluid" alt=""></button>
            </div>

            @livewire('user-register')

        </div>
    </div>
</div>
<!--  -->

<!-- Sign In Modal -->
<div class="modal" id="loginModal">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
            <h4 class="modal-title text-16">Sign In To Allyncetech</h4>
            <button type="button" class="close" data-dismiss="modal"><img src="{{ asset('img/modal-close-button.svg') }}" style="height: 20px;" class="img-fluid" alt=""></button>
            </div>
            @livewire('user-login')
            {{--  --}}
        </div>
    </div>
</div>
{{--  --}}
