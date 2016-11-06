<%@ page import="com.quanlinhatro.Khu" %>
<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
    <div class="orders-container">
        <div class="orders-header" style="text-align: center">
            <h6>Thông tin khu trọ</h6>
        </div>
        <ul class="orders-list">
            <g:each in="${Khu.findAllByChuTro(chuTro)}" var="khu">
                <li class="order-item">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 item-left">
                            <div class="item-booker">${khu.ten} </div>
                            <div class="item-time">
                                <i class="fa fa-calendar azure " style="width: 20px; color: #333333"></i>
                                <span> 11 Tháng 6 năm 2016</span>
                            </div>
                            <div class="item-time">
                                <i class="fa fa-map-marker circular azure" style="width: 20px; color: #333333"></i>
                                <span> ${khu.diaChi}</span>
                            </div>
                            <div class="item-time">
                                <i class="fa fa-home circular azure" style="width: 20px; color: #333333"></i>
                                <span> Dãy trọ cho thuê</span>
                            </div>
                            <div class="item-time">
                                <i class="fa fa-money circular azure" style="width: 20px; color: #333333"></i>
                                <span> 1.5000.000đ - 2.000.000đ/Tháng</span>
                            </div>
                        </div>

                    </div>
                    <a class="item-more" href="">
                        <i></i>
                    </a>
                </li>
            </g:each>

        </ul>
        <div class="orders-footer">
            <a class="show-all" href=""><i class="fa fa-angle-down"></i> Show All</a>
            <div class="help">
                <a href=""><i class="fa fa-question"></i></a>
            </div>
        </div>
    </div>
</div>