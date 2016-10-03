package com.quanlinhatro

class LoaiThuChi {
    String ten
    static constraints = {
        ten nullable: false, blank: false
    }
    
    static mapping = {
        version(false)
        table("LOAI_THU_CHI")
    }
}
