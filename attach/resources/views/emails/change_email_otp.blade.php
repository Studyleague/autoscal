 
<style>
			table {
					width: 100%;
					margin-left: auto;
					margin-right: auto;
			}
			.table-order-info p{
					margin: 0px 0px 5px 0px;
					font-size: 14px;
					color: #333;
			}
			.table-footer p{
					margin: 0px 0px 5px 0px;
					font-size: 14px;
					color: #333;
			}
	</style>
    <table class="table-order-info">
			<tr>
				<td>
					<p>Dear <b>{{$data['full_name']}}</b>, </p>
					<p>Your Firmingle change email verification code is '.{{$data['otp']}}.'Varification code will be expire in 5 min. From SLITS</p>
					
					<p>Kind Regards,<br><b>Firmingle</b></p>
					<!-- <p>GiBo</p> -->
				</td>
			</tr>
    </table>
