package com.quanlinhatro



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

class ChuTroController extends BaseController {
    def index () {
        redirect(action: 'list')
    }

    def create() {
        render (view : 'edit', model: [chuTro: new ChuTro()])
    }

    def edit(long id) {
        def chuTro = ChuTro.get(id)
        if(chuTro)
        {
            render(view: 'edit', model: [chuTro: chuTro])
        }
    }
}
