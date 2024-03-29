<%@ page import="com.quanlinhatro.Khu" %>
<head>
    <script>
        $(document).ready(function () {
            $('#WiredWizard').wizard();

            $("#loaihinh").on('change', function (event) {
                var selected = $(this).val();
                switch (selected) {
                    case 'DAYTRO': {
                        $("#khutro-view-thongtinchitiet").html($("#khutro-view-thongtindaytro").html());
                        break;
                    }
                    default: {
                        console.log("default")
                        $("#khutro-view-thongtinchitiet").html("");
                    }
                }
            })
        })
    </script>
</head>
<body>
<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
    <div class="profile-container">
        <div class="profile-header row" style="height: 175px; background: white; margin-top: 0">
            <div class="col-lg-8 col-md-8 col-sm-12" style="height: 175px; border-right: 1px solid #eee;">
               <div style="width: 100%;padding: 10px 0px">
                   <div style="font-size: 20px;margin: 10px; display: inline">${khu.ten}</div>
                   <a href="#" class="btn btn-palegreen btn-sm btn-follow">
                       <i class="fa fa-check"></i>
                       Following
                   </a>
               </div>
                <div class="header-information">
                    Nhà trọ sạch, đẹp, tiện nghi, phù hợp với tất cả đối tượng
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12" style="padding: 0;background: white;margin-bottom: 40px">
                <div class="row" style="padding:0px 10px">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="border-right: 1px solid #eee;margin: 20px 0 30px 0;text-align: center;padding-right: 16px;padding-left: 16px;">
                        <div class="pink" style="font-size: 30px">83</div>
                        <div>PHÒNG</div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="border-right: 1px solid #eee;margin: 20px 0 30px 0;text-align: center;">
                        <div class="pink" style="font-size: 30px">500</div>
                        <div>m<sup>2</sup></div>
                    </div>
                </div>
                <div class="row"  style="padding:0px 10px">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 " style="border-right: 1px solid #eee;text-align: center; border-top: 1px solid #eee;min-height: 55px; padding-top: 10px">
                        <i class="glyphicon glyphicon-map-marker"></i><br/> Quận 9
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" style="border-right: 1px solid #eee;text-align: center;  border-top: 1px solid #eee;min-height: 55px; padding-top: 10px">
                        Giá:<br/> <strong>1.500.000đ</strong>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>

    </div>
</div>
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <div class="row">
        <div class="col-xs-12">
            <div class="dashboard-box">
    <div class="box-header">
        <div class="deadline">
            ${khu.ten}
        </div>
    </div>
    <div class="box-progress">
        <div class="progress-handle">day 20</div>
        <div class="progress progress-xs progress-no-radius bg-whitesmoke">
            <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
            </div>
        </div>
    </div>
    <div class="box-tabbs">
        <div class="tabbable">
            <ul class="nav nav-tabs tabs-flat  nav-justified" id="myTab11">
                <li class="active">
                    <a data-toggle="tab" href="#danhsachphong" aria-expanded="true">
                        Danh sách Phòng
                    </a>
                </li>
                <li class="">
                    <a data-toggle="tab" href="#gia" aria-expanded="false">
                        Bảng giá
                    </a>
                </li>

                <li class="">
                    <a data-toggle="tab" id="contacttab" href="#bandwidth" aria-expanded="false">
                        Thu chi
                    </a>
                </li>
                <li class="">
                    <a data-toggle="tab" href="#sales" aria-expanded="false">
                        Quảng cáo
                    </a>
                </li>
                <li class="">
                    <a data-toggle="tab" href="#ád" aria-expanded="false">
                        Quảng cáo2
                    </a>
                </li>

            </ul>
            <div class="tab-content tabs-flat no-padding">
                <div id="danhsachphong" class="tab-pane padding-5 animated fadeInUp active">
                    <div class="row">
                        <div class="col-lg-12">
                            <g:render template="/phongTro/table" model="[khu: khu]"/>
                        </div>
                    </div>
                </div>
                <div id="gia" class="tab-pane  animated fadeInUp">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="well">
                                <form role="form">
                                    <div class="form-group">
                                        <label >Giá điện: </label>
                                        <input type="emadsdil" class="form-control" id="exampđáleInputEmail1" placeholder="Enter email">
                                    </div>
                                    <div class="form-group">
                                        <label >Giá nước:</label>
                                        <input type="passsdword" class="form-control" id="ads" placeholder="sadasd">
                                    </div>
                                    <div class="form-group">
                                        <label >Giá phòng</label>
                                        <input type="passsdword" class="form-control" id="áds" placeholder="ádsad">
                                    </div>
                                    <div class="form-group">
                                        <label >Giá đỗ</label>
                                        <input type="passsdword" class="form-control" id="ádáds" placeholder="ádsad">
                                    </div>
                                    <button type="submit" class="btn btn-blue">Submit</button>
                                </form>
                            </div>
                        </div>
                    </div>

                </div>

                <div id="bandwidth" class="tab-pane padding-10 animated fadeInUp">
                    <div class="databox-sparkline bg-themeprimary">
                        <span id="dashboard-bandwidth-chart" data-sparkline="compositeline" data-height="250px" data-width="100%" data-linecolor="#fff" data-secondlinecolor="#eee" data-fillcolor="rgba(255,255,255,.1)" data-secondfillcolor="rgba(255,255,255,.25)" data-spotradius="0" data-spotcolor="#fafafa" data-minspotcolor="#fafafa" data-maxspotcolor="#ffce55" data-highlightspotcolor="#fff" data-highlightlinecolor="#fff" data-linewidth="2" data-secondlinewidth="2" data-composite="500, 400, 100, 450, 300, 200, 100, 200"><canvas width="786" height="250" style="display: inline-block; width: 786px; height: 250px; vertical-align: top;"></canvas></span>
                    </div>
                </div>
                <div id="sales" class="tab-pane animated fadeInUp no-padding-bottom" style="padding:20px 20px 0 20px;">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="databox databox-xlg databox-vertical databox-inverted databox-shadowed">
                                <div class="databox-top">
                                    <div class="databox-sparkline">
                                        <span data-sparkline="line" data-height="125px" data-width="100%" data-fillcolor="false" data-linecolor="themesecondary" data-spotcolor="#fafafa" data-minspotcolor="#fafafa" data-maxspotcolor="#ffce55" data-highlightspotcolor="#ffce55" data-highlightlinecolor="#ffce55" data-linewidth="1.5" data-spotradius="2"><canvas width="100" height="125" style="display: inline-block; width: 100px; height: 125px; vertical-align: top;"></canvas></span>
                                    </div>
                                </div>
                                <div class="databox-bottom no-padding text-align-center">
                                    <span class="databox-number lightcarbon no-margin">224</span>
                                    <span class="databox-text lightcarbon no-margin">Sale Unit / Hour</span>

                                </div>
                            </div>

                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="databox databox-xlg databox-vertical databox-inverted databox-shadowed">
                                <div class="databox-top">
                                    <div class="databox-sparkline">
                                        <span data-sparkline="line" data-height="125px" data-width="100%" data-fillcolor="false" data-linecolor="themefourthcolor" data-spotcolor="#fafafa" data-minspotcolor="#fafafa" data-maxspotcolor="#8cc474" data-highlightspotcolor="#8cc474" data-highlightlinecolor="#8cc474" data-linewidth="1.5" data-spotradius="2"><canvas width="100" height="125" style="display: inline-block; width: 100px; height: 125px; vertical-align: top;"></canvas></span>
                                    </div>
                                </div>
                                <div class="databox-bottom no-padding text-align-center">
                                    <span class="databox-number lightcarbon no-margin">7063$</span>
                                    <span class="databox-text lightcarbon no-margin">Income / Hour</span>

                                </div>
                            </div>

                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="databox databox-xlg databox-vertical databox-inverted databox-shadowed">
                                <div class="databox-top">
                                    <div class="databox-piechart">
                                        <div data-toggle="easypiechart" class="easyPieChart block-center" data-barcolor="themeprimary" data-linecap="butt" data-percent="80" data-animate="500" data-linewidth="8" data-size="125" data-trackcolor="#eee" style="width: 125px; height: 125px; line-height: 125px;">
                                            <span class="font-200"><i class="fa fa-gift themeprimary"></i></span>
                                            <canvas width="125" height="125"></canvas></div>
                                    </div>
                                </div>
                                <div class="databox-bottom no-padding text-align-center">
                                    <span class="databox-number lightcarbon no-margin">9</span>
                                    <span class="databox-text lightcarbon no-margin">NEW ORDERS</span>

                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="databox databox-xlg databox-vertical databox-inverted  databox-shadowed">
                                <div class="databox-top">
                                    <div class="databox-piechart">
                                        <div data-toggle="easypiechart" class="easyPieChart block-center" data-barcolor="themethirdcolor" data-linecap="butt" data-percent="40" data-animate="500" data-linewidth="8" data-size="125" data-trackcolor="#eee" style="width: 125px; height: 125px; line-height: 125px;">
                                            <span class="white font-200"><i class="fa fa-tags themethirdcolor"></i></span>
                                            <canvas width="125" height="125"></canvas></div>
                                    </div>
                                </div>
                                <div class="databox-bottom no-padding text-align-center">
                                    <span class="databox-number lightcarbon no-margin">11</span>
                                    <span class="databox-text lightcarbon no-margin">NEW TICKETS</span>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="box-visits">
        <div class="row">
            <div class="col-lg-4 col-sm-4 col-xs-12">
                <div class="notification" style="cursor: pointer" onclick="">
                    <div class="clearfix">
                        <div class="notification-icon">
                            <i class="fa fa-edit palegreen bordered-1 bordered-palegreen"></i>
                        </div>
                        <div class="notification-body">
                            <span class="title">Cập nhật</span>
                            <span class="description">Lần cuối: 15/6/2016</span>
                        </div>
                        <div class="notification-extra">
                            <i class="fa fa-clock-o palegreen"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-4 col-xs-12">
                <div class="notification">
                    <div class="clearfix">
                        <div class="notification-icon">
                            <i class="fa fa-check azure bordered-1 bordered-azure"></i>
                        </div>
                        <div class="notification-body">
                            <span class="title">Hanging out with kids</span>
                            <span class="description">03:30 pm - 05:15 pm</span>
                        </div>
                        <div class="notification-extra">
                            <i class="fa fa-clock-o azure"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-4 col-xs-12">
                <div class="notification">
                    <div class="clearfix">
                        <div class="notification-icon">
                            <i class="fa fa-phone bordered-1 bordered-orange orange"></i>
                        </div>
                        <div class="notification-body">
                            <span class="title">Meeting with Patty</span>
                            <span class="description">01:00 pm</span>
                        </div>
                        <div class="notification-extra">
                            <i class="fa fa-clock-o orange"></i>
                            <span class="description">office</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
        </div>
    </div>
</div>

</body>

<div id="khutro-view-thongtindaytro" style="display: none">
    <div class="col-md-12">
        <div class="form-title">
           Loại phòng trọ:
        </div>
        <div class="row" rel="form">
            <div rel="group">
                <div class="col-md-6 col-sm-12">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label>Tên loại khu trọ:</label>
                                <span class="input-icon icon-right">
                                    <input class="form-control" name="loaiPhong.ten" placeholder="Tên loại khu trọ" type="text">
                                    <i class="fa fa-home palegreen"></i>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-sm-12">
                            <div class="form-group">
                                <label>Diện tích:</label>
                                <div class="input-group">
                                    <input name="loaPhong.dienTich" type="text" class="form-control">
                                    <span class="input-group-addon">.00 m<sup>2</sup></span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12">
                            <div class="form-group">
                                <label>Giá:</label>
                                <div class="input-group">
                                    <input name="loaPhong.gia" type="number" class="form-control">
                                    <span class="input-group-addon">VNĐ</span>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="form-group">
                        <label>Mô tả:</label>
                        <span class="input-icon icon-right">
                            <textarea class="form-control" rows="5"></textarea>
                            <i class="fa fa-file-text-o palegreen"></i>
                        </span>
                    </div>
                </div>

                <div class="col-sm-12">
                    <div class="form-group">

                        <label>Công trình phụ:</label>
                    </div>
                    <div class="form-group">
                        <div class="col-md-3 col-sm-4">
                            <label>
                                <input class="checkbox-slider toggle colored-palegreen" type="checkbox">
                                <span class="text"> &nbsp;Nhà vệ sinh riêng</span>
                            </label>
                        </div>
                        <div class="col-md-3 col-sm-4">
                            <label>
                                <input class="checkbox-slider toggle colored-palegreen" type="checkbox">
                                <span class="text">&nbsp; Gác trên</span>
                            </label>
                        </div>
                        <div class="col-md-3 col-sm-4">
                            <label>
                                <input class="checkbox-slider toggle colored-palegreen" type="checkbox">
                                <span class="text"> &nbsp;Tường ốp gạch men</span>
                            </label>
                        </div>
                        <div class="col-md-3 col-sm-4">
                            <label>
                                <input class="checkbox-slider toggle colored-palegreen" type="checkbox">
                                <span class="text">&nbsp; Bồn rửa tay</span>
                            </label>
                        </div>
                        <div class="col-md-3 col-sm-4">
                            <label>
                                <input class="checkbox-slider toggle colored-palegreen" type="checkbox">
                                <span class="text">&nbsp; Bồn cầu bệt</span>
                            </label>
                        </div>
                        <div class="col-md-3 col-sm-4">
                            <label>
                                <input class="checkbox-slider toggle colored-palegreen" type="checkbox">
                                <span class="text">&nbsp; Bồn cầu xổm</span>
                            </label>
                        </div>
                        <div class="col-md-3 col-sm-4">
                            <label>
                                <input class="checkbox-slider toggle colored-palegreen" type="checkbox">
                                <span class="text">&nbsp; Vòi hoa sen</span>
                            </label>
                        </div>
                        <div class="col-md-3 col-sm-4">
                            <label>
                                <input class="checkbox-slider toggle colored-palegreen" type="checkbox">
                                <span class="text">&nbsp; </span>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>