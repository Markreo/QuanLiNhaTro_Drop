package com.quanlinhatro

class DiaChi {
    String diaChi
    String soNha
    String tenDuong
    String thon //ap
    String xa //phuong, thi tran, thi tu
    String huyen// quan, thi xa, tp truc thuoc tinh
    String tinh //tp truc thuoc TW

    static constraints = {
        diaChi blank: false, nullable: true
        soNha blank: false, nullable: true
        tenDuong blank: false,  nullable: true
        thon blank:  false, nullable: true
        xa blank: false, nullable: true
        huyen blank: false, nullable: false
        tinh blank: false, nullable: false
    }
     static mapping = {
         version(false)
         table('DIA_CHI')
     }
}
