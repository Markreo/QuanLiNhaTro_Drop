package com.quanlinhatro

class DichVu {
    enum DonViTinh {
        NONE(-1, "None"),
        CAI(0, "Cai"),
        KG(1, "Kg"),
        LIT(2, "Lit"),
        LAN(3, "Lan")
        int id
        String name
        DonViTinh(id, name) {this.id = id; this.name = name }
    }

    String tenDichVu
    float gia
    DonViTinh dvt =  DonViTinh.NONE
    static constraints = {
        tenDichVu nullable: false, blank: false
        gia nullable: false
        dvt nullable: false
    }

    static mapping = {
        version(false)
        table('DICH_VU')
    }
}
