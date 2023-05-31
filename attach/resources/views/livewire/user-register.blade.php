<div>
        <!-- Step 1 -->
        @if ($step == 1)
            <div class="modal-body" id="joinNowStep1">
                @if (session()->has('register_message'))
                    <div class="row justify-content-center">
                        <div class="col-lg-12">
                            <div class="alert at-alert">
                                <span>{{ session()->get('register_message') }}</span>
                            </div>
                        </div>
                    </div>
                @endif

                <div class="form-group">
                    <label for="exampleInputName">Name*</label>
                    <input type="email" class="form-control  @error('name') is-invalid @enderror" id="exampleInputName" name="name" aria-describedby="nameHelp" wire:model.defer="name" placeholder="Enter Your Name">
                    @error('name')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Email Id*</label>
                    <input type="email" class="form-control  @error('email') is-invalid @enderror" id="exampleInputEmail1" name="email" aria-describedby="emailHelp" wire:model.defer="email" placeholder="Enter Your Email">
                    @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Mobile No*</label>
                    <input type="number" class="form-control  @error('mobile') is-invalid @enderror" id="exampleInputMobile" name="mobile" aria-describedby="mobileHelp" wire:model.defer="mobile" placeholder="Enter Phone Number">
                    @error('mobile')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <p class="text-center">
                    <button type="submit" class="btn btn-custom w-50" {{ $is_disabled ? 'disabled' : '' }} wire:click="saveStep1()" >Submit</button>
                </p>

            </div>
        @endif
        <!-- Step 2 -->
        @if ($step == 2)
            <div class="modal-body" id="joinNowStep2">
                @if (session()->has('register_message'))
                    <div class="row justify-content-center">
                        <div class="col-lg-12">
                            <div class="alert at-alert">
                                <span>{{ session()->get('register_message') }}</span>
                            </div>
                        </div>
                    </div>
                @endif

                <div class="form-group">
                    <div class="verification-code">
                        <label class="control-label">Verification Code</label>
                        {{-- <div class="verification-code--inputs">
                            <input type="text" maxlength="1" oninput='digitValidate(this)' onkeyup='tabChange2(1)'/>
                            <input type="text" maxlength="1" oninput='digitValidate(this)' onkeyup='tabChange2(1)'/>
                            <input type="text" maxlength="1" oninput='digitValidate(this)' onkeyup='tabChange2(1)'/>
                            <input type="text" maxlength="1" oninput='digitValidate(this)' onkeyup='tabChange2(1)'/>
                        </div>
                        <input type="hidden" id="verificationCode" /> --}}
                        <input type="number" style="letter-spacing: 20px; text-align: center; font-size: 25px;" id="verificationCode" maxlength="4" max="9999" class="form-control @error('otp') is-invalid @enderror" wire:model.defer="otp"/>
                        @error('otp')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <p class="text-center">
                    <button type="submit"  {{ $is_disabled ? 'disabled' : '' }} wire:click="saveStep2()" class="btn btn-custom w-50">Verify OTP</button>
                </p>

            </div>
        @endif
        <!-- Step 3 -->
        @if ($step == 3)
            @if (session()->has('register_message'))
                <div class="row justify-content-center">
                    <div class="col-lg-12">
                        <div class="alert at-alert">
                            <span>{{ session()->get('vendor_message') }}</span>
                        </div>
                    </div>
                </div>
            @endif
            <div class="modal-body" id="joinNowStep3">
                <div class="form-group">
                    <h3 class="text-center">Verification Successful !</h3>
                </div>
                <div class="form-group text-center">
                    <label for="exampleInputPassword1">Contact Number</label>
                    <p class="text-center"><span class="w-75" style="border-bottom: 2px solid #FF5331; ">{{ $mobile }}</span></p>
                </div>

                <p class="text-center">
                    <button type="submit" data-dismiss="modal" wire:click="step3()" class="btn btn-custom w-50">OK</button>
                </p>
            </div>
        @endif
</div>
