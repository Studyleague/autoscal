let digitValidate = function (ele) {
    console.log(ele.value);
    ele.value = ele.value.replace(/[^0-9]/g, '');
}

let tabChange = function (val) {
    let ele = document.querySelectorAll('input[type=text]');
    if (ele[val - 1].value != '') {
        ele[val].focus()
    } else if (ele[val - 1].value == '') {
        ele[val - 2].focus()
    }
}


let tabChangeLogin = function (val) {
    let ele = document.querySelectorAll('.otpLogin');
    if (ele[val - 1].value != '') {
        ele[val].focus()
    } else if (ele[val - 1].value == '') {
        ele[val - 2].focus()
    }
}

let tabChangeRegister = function (val) {
    let ele = document.querySelectorAll('.otpRegister');
    if (ele[val - 1].value != '') {
        ele[val].focus()
    } else if (ele[val - 1].value == '') {
        ele[val - 2].focus()
    }
}

let tabChangeVendor = function (val) {
    let ele = document.querySelectorAll('.otpVendor');
    if (ele[val - 1].value != '') {
        ele[val].focus()
    } else if (ele[val - 1].value == '') {
        ele[val - 2].focus()
    }
}



var verificationCode = [];
$(".verification-code input[type=text]").keyup(function (e) {
    // Get Input for Hidden Field
    $(".verification-code input[type=text]").each(function (i) {
        verificationCode[i] = $(".verification-code input[type=text]")[i].value;
        $('#otp_change').val(Number(verificationCode.join('')));
    });
}); // keyup


// var verificationCodeLogin = [];
// $(".verification-codeLogin input[type=text]").keyup(function (e) {
//     // Get Input for Hidden Field
//     $(".verification-codeLogin input[type=text]").each(function (i) {
//         verificationCodeLogin[i] = $(".verification-codeLogin input[type=text]")[i].value;
//         $('#otp_login').val(Number(verificationCodeLogin.join('')));
//     });
// }); // keyup


var verificationCodeRegister = [];
$(".verification-codeRegister input[type=text]").keyup(function (e) {
    // Get Input for Hidden Field
    $(".verification-codeRegister input[type=text]").each(function (i) {
        verificationCodeRegister[i] = $(".verification-codeRegister input[type=text]")[i].value;
        $('#otp_register').val(Number(verificationCodeRegister.join('')));
    });
}); // keyup


var verificationCodeVendor = [];
$(".verification-codeVendor input[type=text]").keyup(function (e) {
    // Get Input for Hidden Field
    $(".verification-codeVendor input[type=text]").each(function (i) {
        verificationCodeVendor[i] = $(".verification-codeVendor input[type=text]")[i].value;
        $('#otp_vendor').val(Number(verificationCodeVendor.join('')));
    });
}); // keyup
