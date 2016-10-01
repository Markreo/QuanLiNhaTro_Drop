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
    Khu khu
    static hasMany = [khachThues: KhachThue, chiPhi: ChiPhi]
    TinhTrang tinhTrang = TinhTrang.CHUASUDUNG


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
