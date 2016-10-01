package com.quanlinhatro

class PhongTro {

    enum TinhTrang {
        DANGSUA(0, "Dang sua"),
        CHUASUDUNG(1, "Chua su dung"),
        DANGTHUE(2, "Dang thue"),
        DATCOC(3, "Da dat coc")

        int id
        String name
        TinhTrang(id, name) {this.id id; this.name = name}
    }

    String tenPhong
    String ghiChu
    static belongsTo = [khu: Khu]
    static hasMany = [khachThue: KhachThue]
    TinhTrang tinhTrang = TinhTrang.CHUASUDUNG


    static constraints = {
        tenPhong blank: false, nullable: false
        ghiChu nullable: true
        khu nullable: false
        tinhTrang nullable: false
    }
    static mapping = {
        table('PHONG_TRO')
        version(false)
    }
}
