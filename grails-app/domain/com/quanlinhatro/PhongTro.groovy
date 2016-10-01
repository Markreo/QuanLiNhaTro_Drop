package com.quanlinhatro

class PhongTro {

    String tenPhong
    String ghiChu
    Khu khu
    static hasMany = [khachThues: KhachThue, chiPhi: ChiPhi]
    TinhTrang tinhTrang


    static constraints = {
        tenPhong blank: false, nullable: false
        ghiChu nullable: true
        khu nullable: false
        tinhTrang nullable: false
        khachThues nullable: true
        chiPhi nullable: true
    }
    static mapping = {
        table('PHONG_TRO')
        version(false)
    }
}
