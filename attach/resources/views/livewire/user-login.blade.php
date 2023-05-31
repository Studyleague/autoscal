<div>

    @if ($step == 1)

        <div class="modal-body" id="loginStep1">
            @if (session()->has('login_message'))
                <div class="row justify-content-center">
                    <div class="col-lg-12">
                        <div class="alert at-alert">
                            <span>{{ session()->get('login_message') }}</span>
                        </div>
                    </div>
                </div>
            @endif
            <div class="form-group">
                <label for="exampleInputPassword1">Mobile No*</label>
                <input type="number" class="form-control @error('mobile') is-invalid @enderror" id="exampleInputMobile" wire:model.defer="mobile" name="mobile" aria-describedby="mobileHelp" placeholder="Enter Phone Number">
                @error('mobile')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
            <p class="text-center">
                <button type="submit" class="btn btn-custom w-50" {{ $is_disabled ? 'disabled' : '' }} wire:click="step1()">Continue</button>
            </p>
            <p class="text-center mt-2">
                <strong>Not a member yet? <a href="" data-dismiss="modal" data-toggle="modal" data-target="#joinNowModal" class="color-main">Join now</a> </strong>
            </p>
        </div>

    @elseif ($step == 2)

        <div class="modal-body" id="loginStep2">
            @if (session()->has('login_message'))
                <div class="row justify-content-center">
                    <div class="col-lg-12">
                        <div class="alert at-alert">
                            <span>{{ session()->get('login_message') }}</span>
                        </div>
                    </div>
                </div>
            @endif
            {{-- <form> --}}
                <div class="form-group">
                    <div class="">
                        <label class="control-label">Enter OTP</label>
                        <div class="verification-code--inputs verification-codeLogin text-center">
                            {{-- <input type="text" class="otpLogin form-control @error('otp') is-invalid @enderror" maxlength="1" oninput='digitValidate(this)' onkeyup='tabChangeLogin(1)'/>
                            <input type="text" class="otpLogin form-control @error('otp') is-invalid @enderror" maxlength="1" oninput='digitValidate(this)' onkeyup='tabChangeLogin(2)'/>
                            <input type="text" class="otpLogin form-control @error('otp') is-invalid @enderror" maxlength="1" oninput='digitValidate(this)' onkeyup='tabChangeLogin(3)'/>
                            <input type="text" class="otpLogin form-control @error('otp') is-invalid @enderror" maxlength="1" oninput='digitValidate(this)' onkeyup='tabChangeLogin(4)'/>
                            <input type="hidden" id="otp" name="otp" wire:model.defer="otp"/> --}}
                            <input type="number" style="letter-spacing: 20px; text-align: center; font-size: 25px;" id="verificationCode" maxlength="4" max="9999" class="form-control @error('otp') is-invalid @enderror" wire:model.defer="otp"/>
                        </div>
                        @error('otp')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <p class="text-center">
                    <button type="submit" class="btn btn-custom w-50" {{ $is_disabled ? 'disabled' : '' }} wire:click="step2()">Verify OTP</button>
                </p>
            {{-- </form> --}}
            <script>
                var verificationCodeLogin = [];
                $(".verification-codeLogin input[type=text]").keyup(function (e) {
                    $(".verification-codeLogin input[type=text]").each(function (i) {
                        verificationCodeLogin[i] = $(".verification-codeLogin input[type=text]")[i].value;
                        $('#otp').val(Number(verificationCodeLogin.join('')));
                    });
                });
            </script>
        </div>

    @elseif ($step == 3)

        <div class="modal-body" id="joinNowStep3">
            @if (session()->has('login_message'))
                <div class="row justify-content-center">
                    <div class="col-lg-12">
                        <div class="alert at-alert">
                            <span>{{ session()->get('login_message') }}</span>
                        </div>
                    </div>
                </div>
            @endif
            {{-- <form> --}}
                <div class="form-group">
                    <h3 class="text-left" style="font-size: 22px">Login Successfull</h3>
                </div>
                <div class="form-group text-center">
                    <img src="{{ asset('img/login-modal-icon.svg') }}" class="img-fluid" alt="">
                </div>
                <p class="text-center">
                    <button type="submit" wire:click="step3()" data-dismiss="modal" class="btn btn-custom w-50">OK</button>
                </p>
            {{-- </form> --}}
        </div>

    @endif

</div>
