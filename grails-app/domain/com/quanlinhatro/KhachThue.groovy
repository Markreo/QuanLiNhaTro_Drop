package com.quanlinhatro

import org.grails.databinding.BindingFormat

class KhachThue {
    String hoTenDem
    String ten
    @BindingFormat('dd-MM-yyyy')
    Date ngaySinh
    String soDienThoai


    static constraints = {
        hoTenDem nullable: true
        ten nullable: false, blank: false
        ngaySinh nullable: true
        soDienThoai nullable: true
    }
    static mapping = {
        version(false)
        table('KHACH_THUE')
    }
}
