package com.quanlinhatro

class Khu {
    String ten
    String diaChi
    static belongsTo = [chuTro: ChuTro]
    static hasMany = [phongTros: PhongTro]
    static constraints = {
        ten nullable: false, blank: false
        diaChi nullable: false
        chuTro nullable: false
        phongTros nullable: true
    }

    static mapping = {
        version(false)
        table('KHU')
    }
}
