package com.quanlinhatro
import org.grails.databinding.BindingFormat
class BangChi {
    enum Loai {
        THU(0, 'Thu'),
        CHI(1, 'Chi')
        
        int id
        String name
        Loai(id, name) {this.id = id; this.name = name}
    } 
    String ten
    Khu khu
    LoaiThuChi loaiChi
    float soTien
    String ghiChu
    @BindingFormat('dd-MM-yyyy')
    Date ngayChi
    static constraints = {
        ten nullable: false, blank: false
        khu nullable: false
        loaiChi nullable: false
        soTien nullable: false
        ghiChu nullable: true
    }
    
    static mapping = {
        version(false)
        table('BANG_CHI')
        ghiChu type: 'text'
    }
}
