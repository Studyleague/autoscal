<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Firmingle subscription mail</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="firmingle.com">
    <link rel="shortcut icon" type="image/x-icon" href="{{ asset('assets/logo/favicon.png') }}" />
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div bgcolor="#f6f6f6" style="color: #333; height: 100%; width: 100%;" height="100%" width="100%">
    <table bgcolor="#f6f6f6" cellspacing="0" style="border-collapse: collapse; padding: 40px; width: 100%;" width="100%">
        <tbody>
            <tr>
                <td width="5px" style="padding: 0;"></td>
                <td style="clear: both; display: block; margin: 0 auto; max-width: 600px; padding: 10px 0;">
                    <table width="100%" cellspacing="0" style="border-collapse: collapse;">
                        <tbody>
                            <tr>
                                <td style="padding: 0;">
                                    <a
                                        href="#"
                                        style="color: #348eda;"
                                        target="_blank"
                                    >
                                        <img
                                            src="{{ asset('assets/logo/Firmingle.png') }}"
                                            alt="Firmingle.com"
                                            style="height: 40px; max-width: 100%; width: 170px;"
                                            height="40"
                                            width="170"
                                        />
                                    </a>
                                </td>
                                <td style="color: #999; font-size: 12px; padding: 0; text-align: right;" align="right">
                                    Investor Plan<br />
                                    March 28, 2022
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
                <td width="5px" style="padding: 0;"></td>
            </tr>

            <tr>
                <td width="5px" style="padding: 0;"></td>
                <td bgcolor="#FFFFFF" style="border: 1px solid #000; clear: both; display: block; margin: 0 auto; max-width: 600px; padding: 0;">
                    <table width="100%" style="background: #f9f9f9; border-bottom: 1px solid #eee; border-collapse: collapse; color: #999;">
                        <tbody>
                            <tr>
                                {{-- <td width="50%" style="padding: 20px;"><strong style="color: #333; font-size: 24px;">₹23.95</strong> Paid</td> --}}
                                {{-- <td align="right" width="50%" style="padding: 20px;">Thanks for using <span class="il">Firmingle.com</span></td> --}}
                                <td width="100%" style="padding: 20px;">Hey, {{ $email_data['name'] }} Thanks for using <span class="il">Firmingle.com</span></td>
                            </tr>
                        </tbody>
                    </table>
                </td>
                <td style="padding: 0;"></td>
                <td width="5px" style="padding: 0;"></td>
            </tr>
            <tr>
                <td width="5px" style="padding: 0;"></td>
                <td style="border: 1px solid #000; border-top: 0; clear: both; display: block; margin: 0 auto; max-width: 600px; padding: 0;">
                    <table cellspacing="0" style="border-collapse: collapse; border-left: 1px solid #000; margin: 0 auto; max-width: 600px;">
                        <tbody>
                            <tr>
                                <td valign="top"  style="padding: 20px;">
                                    <h3
                                        style="
                                            border-bottom: 1px solid #000;
                                            color: #000;
                                            font-family: 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif;
                                            font-size: 18px;
                                            font-weight: bold;
                                            line-height: 1.2;
                                            margin: 0;
                                            margin-bottom: 15px;
                                            padding-bottom: 5px;
                                        "
                                    >
                                        Summary
                                    </h3>
                                    <table cellspacing="0" style="border-collapse: collapse; margin-bottom: 40px;">
                                        <tbody>
                                            <tr>
                                                <td style="padding: 5px 0;">Plan Name</td>
                                                <td align="right" style="padding: 5px 0;">{{ $email_data['plan_name'] }}</td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px 0;">Plan Price</td>
                                                <td align="right" style="padding: 5px 0;">{{ $email_data['plan_price'] }}</td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px 0;">Plan Plan Start Date</td>
                                                <td align="right" style="padding: 5px 0;">{{ $email_data['plan_start_date'] }}</td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px 0;">Plan End Date</td>
                                                <td align="right" style="padding: 5px 0;">{{ $email_data['plan_end_date'] }}</td>
                                            </tr>
                                            <tr>
                                                <td style="padding: 5px 0;">Payment Id</td>
                                                <td align="right" style="padding: 5px 0;">{{ $email_data['payment_id'] }}</td>
                                            </tr>
                                            <tr>
                                                <td style="border-bottom: 2px solid #000; border-top: 2px solid #000; font-weight: bold; padding: 5px 0;">Amount paid</td>
                                                <td align="right" style="border-bottom: 2px solid #000; border-top: 2px solid #000; font-weight: bold; padding: 5px 0;">₹{{ number_format($email_data['plan_price']) }}</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
                <td width="5px" style="padding: 0;"></td>
            </tr>

            <tr style="color: #666; font-size: 12px;">
                <td width="5px" style="padding: 10px 0;"></td>
                <td style="clear: both; display: block; margin: 0 auto; max-width: 600px; padding: 10px 0;">
                    <table width="100%" cellspacing="0" style="border-collapse: collapse;">
                        <tbody>
                            <tr>
                                <td width="40%" valign="top" style="padding: 10px 0;">
                                    <h4 style="margin: 0;">Questions?</h4>
                                    <p style="color: #666; font-size: 12px; font-weight: normal; margin-bottom: 10px;">
                                        Please visit our
                                        <a
                                            href="#"
                                            style="color: #666;"
                                            target="_blank"
                                        >
                                            Support Center
                                        </a>
                                        with any questions.
                                    </p>
                                </td>
                                <td width="10%" style="padding: 10px 0;">&nbsp;</td>
                                <td width="40%" valign="top" style="padding: 10px 0;">
                                    <h4 style="margin: 0;"><span class="il">Firmingle</span></h4>
                                    <p style="color: #666; font-size: 12px; font-weight: normal; margin-bottom: 10px;">
                                        <a href="#">Address: Bangalore, India.</a>
                                    </p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
                <td width="5px" style="padding: 10px 0;"></td>
            </tr>
        </tbody>
    </table>
</div>


<style type="text/css">
body{margin-top:20px;}
</style>

<script type="text/javascript">

</script>
</body>
</html>
