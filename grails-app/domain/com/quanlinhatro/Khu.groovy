package com.quanlinhatro

class Khu {
    enum Loai {
        DAYTRO(0,"Khu nhà trọ"),
        NHAMOTPHANHAI(1, "Nhà 1/2 căn"),
        NHANGUYENCAN(2, "Nhà nguyên căn"),
        CHUNGCUMINI(3, "Chung cư mini")
        int id
        String name
        Loai(id, name) {this.id = id; this.name = name}
    }
    String ten
    String diaChi
    Loai loai = Loai.DAYTRO
    static belongsTo = [chuTro: ChuTro]
    static hasMany = [phongTros: PhongTro]
    static constraints = {
        ten nullable: false, blank: false
        diaChi nullable: false
        loai nullable: false
        chuTro nullable: false
        phongTros nullable: true
    }

    static mapping = {
        version(false)
        table('KHU')
    }
}
