<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thanh Toán</title>
    </head>
    <body>
        <div class="inside-banner">
            <div class="container">
                <span class="pull-right"><a href="/QuanLiNhaTro/">Trang Chủ</a>Thanh Toán Tiền Phòng</span>
             </div>
        </div>
        
        <div class="container">
            <div class="row">
                 <div class="col-lg-6 col-lg-offset-3 col-sm-6 col-sm-offset-3 col-xs-12 ">
                     <div class="form-group">
                         <label for="sel1">Tiền Phòng: </label>
                         <select class="form-control">
                             <option>1 triệu</option>
                             <option>1.5 triệu</option>
                             <option>3 triệu</option>
                             <option>5 triệu</option>
                             <option>10 triệu</option>
                         </select>
                         <label>Tiền Điện: </label>
                         <input type="text" class="form-control" placeholder="Tổng số điện" name="TienDien">
                         <label>Tiền Nước: </label>
                         <input type="text" class="form-control" placeholder="Tổng số nước" name="TienNuoc">

                         <button type="submit" class="btn btn-success" name="Submit">Tính Toán</button>
                     </div>
                 </div>
             </div>   
        </div>
    </body>
</html>
