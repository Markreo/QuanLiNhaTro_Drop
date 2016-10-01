package com.quanlinhatro

class ChiPhi {
    DichVu dichVu
    float donVi

    static constraints = {
        dichVu nullable: false
        donVi nullable: false
    }
    static mapping = {
        version(false)
        table('CHI_PHI')
    }
}
