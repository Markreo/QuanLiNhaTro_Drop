<head>
    <script>
        var i = 2
        $(document).ready(function () {
            i = 2
        })
        $(document).on('click', "#phongtro-addmore", function (event) {
            console.log('add more')
            var _new = $("#phongtro-tab").append(" <li class='active'> <a data-toggle='tab' href='#loai" + i + "' aria-expanded='false' rel='phongtro-addmore'>Loại " + i +"</a></li>")
            $("#phongtro-tab").append(" <li style='cursor: pointer' id='phongtro-addmore'> <a data-toggle='tab' href='#loai" + i + "' aria-expanded='false' rel='phongtro-addmore'> <i class='fa fa-plus azure'></i></a></li>")
            $("#phongtro-tab-content").find(".active").removeClass('active')
            $("#phongtro-tab-content").append('<div id="loai' + i +'" class="tab-pane padding-5 animated fadeInUp active"> content loại ' + i + '</div>')
            i++
            $(this).remove()

        })
    </script>
    <style>
            #phongtro-tab li.active {
            border-top: 4px solid #2dc3e8;
        }
    </style>
</head>
<body>
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="row">
            <div class="col-xs-12">
                <div class="dashboard-box">
                    <div class="box-header">
                        <div class="deadline">
                            Tạo thêm khu trọ
                        </div>
                    </div>
                    <div class="box-progress">
                        <div class="progress progress-xs progress-no-radius bg-whitesmoke">

                        </div>
                    </div>
                    <div class="box-tabbs">
                        <div class="tabbable">
                            <ul class="nav nav-tabs tabs-flat  nav-justified" id="phongtro-tab">
                                <li class="active">
                                    <a data-toggle="tab" href="#loai1" aria-expanded="true">
                                        Loại 1
                                    </a>
                                </li>
                                <li class="" style="cursor: pointer" id="phongtro-addmore">
                                    <a data-toggle="tab" href="javascript:void(0)" aria-expanded="false">
                                        <i class="fa fa-plus azure"></i>
                                    </a>
                                </li>
                            </ul>
                            <div class="tab-content tabs-flat no-padding" id="phongtro-tab-content">
                                <div id="loai1" class="tab-pane padding-5 animated fadeInUp active">
                                    content loại 1
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
