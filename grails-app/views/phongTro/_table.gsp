<head>
    <style>
    #table-danhsachphongtro tbody tr {
        cursor: pointer;
    }
    .table-hover tbody tr:hover td, .table-hover tbody tr:hover th {
        background-color: rgba(163, 215, 232, 0.72);
    }
    </style>
    <script>
        $("#table-danhsachphongtro tbody tr").on('click', function (event) {
            console.log('function')
            //ajax post
            var khu_id = '${'get phontro.id'}';
            $.post('${createLink(controller: 'phongTro',action: 'view')}', {id: khu_id}, function (html) {
                $("#page-body").html(html)
            })
        })
    </script>
</head>
<body>
<div class="col-xs-12 col-md-12">
    <div class="well">

        <table id="table-danhsachphongtro" class="table table-hover">
            <thead style="border-bottom: 4px solid #ffce55">
            <tr>
                <th>
                    #
                </th>
                <th>
                    Tên Phòng
                </th>
                <th>
                    Đơn giá
                </th>
                <th>
                    Tình trạng
                </th>
                <th>
                    Ghi chú
                </th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>
                    1
                </td>
                <td>
                    Steve
                </td>
                <td>
                    Jobs
                </td>
                <td>
                    steve
                </td>
                <td>
                    steve
                </td>
            </tr>
            <tr>
                <td>
                    2
                </td>
                <td>
                    Bill
                </td>
                <td>
                    Gates
                </td>
                <td>
                    billy
                </td>
                <td>
                    steve
                </td>
            </tr>
            <tr>
                <td>
                    3
                </td>
                <td>
                    Mark
                </td>
                <td>
                    Zuckerberg
                </td>
                <td>
                    markz
                </td>
                <td>
                    Bill
                </td>
            </tr>

            </tbody>
        </table>
    </div>

</div>
</body>
