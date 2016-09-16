package com.quanlinhatro
import grails.plugin.springsecurity.annotation.Secured

@Secured(['IS_AUTHENTICATED_FULLY'])
class PhongTroController {

    def index() {
        redirect action: 'list'
    }

    def list() {
        //lay ra danh sach phong tro
        def phongtros = PhongTro().list()
        render(view: 'list', model: [phongtros: phongtros])
    }

    def add(){
        render(view: 'add', model: [phongtro: new PhongTro()])
    }

    def save() {
        def phong = new PhongTro()
        phong.tenPhong = params.tenPhong
        phong.soPhong = params.soPhong
        phong.ghiChu = params.ghiChu
        if(phong.hasErrors() || !phong.save(flush: true)) {
            println(phong.errors)
        } else {
            redirect(action: 'list')
        }
    }
}
