package com.quanlinhatro

class Khu {
    String ten
    static constraints = {
        ten nullable: false, blank: false
    }

    static mapping = {
        version(false)
        table('KHU')
    }
}
