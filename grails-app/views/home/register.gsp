<%--
  Created by IntelliJ IDEA.
  User: giapn
  Date: 11/8/2016
  Time: 11:14 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="realestate"/>
</head>

<body>
<div class="inside-banner">
    <div class="container">
        <span class="pull-right"><a href="/QuanLiNhaTro/">Home</a> / Register</span>
        <h2>Register</h2>
    </div>
</div>
<!-- banner -->


<div class="container">
    <div class="spacer">
        <div class="row register">
            <div class="col-lg-6 col-lg-offset-3 col-sm-6 col-sm-offset-3 col-xs-12 ">


                <input type="text" class="form-control" placeholder="Full Name" name="form_name">
                <input type="text" class="form-control" placeholder="Enter Email" name="form_email">
                <input type="password" class="form-control" placeholder="Password" name="form_phone">
                <input type="password" class="form-control" placeholder="Confirm Password" name="form_phone">

                <textarea rows="6" class="form-control" placeholder="Address" name="form_message"></textarea>
                <button type="submit" class="btn btn-success" name="Submit">Register</button>




            </div>

        </div>
    </div>
</div>
</body>
</html>