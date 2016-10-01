package com.quanlinhatro

class Khu {
    String ten
    DiaChi diaChi
    static constraints = {
        ten nullable: false, blank: false
        diaChi nullable: false
    }

    static mapping = {
        version(false)
        table('KHU')
    }
}
