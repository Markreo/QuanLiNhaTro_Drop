package com.quanlinhatro

import com.quanlinhatro.auth.User
import org.grails.databinding.BindingFormat

class ChuTro {
    String hoTenDem
    String ten
    @BindingFormat('dd-MM-yyyy')
    Date ngaySinh
    String soDienThoai
    String email
    User taiKhoan
    static hasMany = [khus:Khu]
    static constraints = {
        hoTenDem nullable: true
        ten nullable: false, blank: false
        email nullable: true, email: true
        ngaySinh nullable: true
        soDienThoai nullable: true
        khus nullable: true
        taiKhoan nullable: false
    }
    static mapping = {
        version(false)
        table('CHU_TRO')
    }
}