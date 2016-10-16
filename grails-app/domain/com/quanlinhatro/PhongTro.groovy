package com.quanlinhatro

class PhongTro {
    enum TinhTrang {
        KHONG(-1, "Null"),
        TRONG(0, "Đang trống"),
        DATHUE(1, "Đã thuê"),
        SUA(2, "Đang sửa"),
        DATCOC(3, "Đã đặt cọc")
        int id
        String name
        TinhTrang(id, name) {this.id = id; this.name = name}
    }

    String tenPhong
    String ghiChu
    Khu khu
    static hasMany = [khachThues: KhachThue, chiPhis: ChiPhi]
    TinhTrang tinhTrang


    static constraints = {
        tenPhong blank: false, nullable: false
        ghiChu nullable: true
        khu nullable: false
        tinhTrang nullable: false
        khachThues nullable: true
        chiPhis nullable: true
    }
    static mapping = {
        table('PHONG_TRO')
        version(false)
    }
}
