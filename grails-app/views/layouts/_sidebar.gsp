<!-- Page Sidebar -->
<div class="page-sidebar" id="sidebar">
    <!-- Page Sidebar Header-->
    <div class="sidebar-header-wrapper">
        <input type="text" class="searchinput" />
        <i class="searchicon fa fa-search"></i>
        <div class="searchhelper">Search Reports, Charts, Emails or Notifications</div>
    </div>
    <!-- /Page Sidebar Header -->
    <!-- Sidebar Menu -->
    <ul class="nav sidebar-menu">
        <!--Dashboard-->
    <li>
        <a href="${createLink(controller: 'home', action: 'dashboard')}" rel='menu'>
            <i class="menu-icon fa fa-windows"></i>
            <span class="menu-text"> Dashboard </span>
        </a>
    </li>
    <li>
        <a href="${createLink(controller: 'chuTro', action: 'index')}" rel='menu'>
            <i class="menu-icon glyphicon glyphicon-home"></i>
            <span class="menu-text"> Chủ trọ </span>
        </a>
    </li>
    <li>
        <a href="${createLink(controller: 'khu', action: 'index')}" rel='menu'>
            <i class="menu-icon glyphicon glyphicon-home"></i>
            <span class="menu-text">Khu/Dãy trọ </span>
        </a>
    </li>
    <li>
        <a href="${createLink(controller: 'phongTro', action: 'index')}" rel='menu'>
            <i class="menu-icon glyphicon glyphicon-home"></i>
            <span class="menu-text"> Phòng Trọ </span>
        </a>
    </li>
    <li>
        <a href="${createLink(controller: 'khachThue', action: 'index')}" rel='menu'>
            <i class="menu-icon glyphicon glyphicon-home"></i>
            <span class="menu-text"> Khách Thuê </span>
        </a>
    </li><li>
        <a href="${createLink(controller: 'diaChi', action: 'index')}" rel='menu'>
            <i class="menu-icon glyphicon glyphicon-home"></i>
            <span class="menu-text"> Địa Chỉ </span>
        </a>
    </li><li>
        <a href="${createLink(controller: 'phongTro', action: 'index')}" rel='menu'>
            <i class="menu-icon glyphicon glyphicon-home"></i>
            <span class="menu-text"> Phòng Trọ </span>
        </a>
    </li>
    </ul>
</div>
<script>
    $("a[rel='menu']").on('click', function (event) {
        event.preventDefault();
        console.log($(this).attr('href'));
        var url = $(this).attr('href');
        $.post(url, function (html) {
            $("#page-body").html(html);
        })
    })
</script>