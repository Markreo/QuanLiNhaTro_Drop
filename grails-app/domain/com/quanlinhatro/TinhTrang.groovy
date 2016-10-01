package com.quanlinhatro

class TinhTrang {
    String tenTinhTrang

    static constraints = {
        tenTinhTrang nullable: false, blank: false
    }
    static mapping = {
        version(false)
        table('TINH_TRANG')
    }
}
