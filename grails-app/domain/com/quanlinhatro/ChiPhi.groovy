package com.quanlinhatro

class ChiPhi {
    DichVu dichVu
    float donVi
    static belongsTo = [phongTro: PhongTro]

    static constraints = {
        dichVu nullable: false
        donVi nullable: false
        phongTro nullable: false;
    }
    static mapping = {
        version(false)
        table('CHI_PHI')
    }
}
