package com.quanlinhatro

class ChuTroController extends BaseController {
    def index () {
        if(chuTro) {
            redirect(action:'view')
        } else {
            render (view : 'edit', model: [chuTro: new ChuTro()])
        }
    }

    def create() {
        render(view: '/base/notAjax', model:[template: 'edit',map: [chuTro: new ChuTro()]])
    }

    def edit(long id) {
        def chuTro = ChuTro.get(id)
        if(chuTro)
        {
            render(template: 'edit', model: [chuTro: chuTro])
        }
    }

    def save(long id) {
        println("params: " + params)
        def chuTroInstance = id ? ChuTro.get(id) : new ChuTro(params)
        if(id) {
            params.remove("id")
            chuTroInstance.properties = params
        }
        chuTroInstance.taiKhoan = user
        if(chuTroInstance.hasErrors() || !chuTroInstance.save(flush: true)) {
            println("err " + chuTroInstance.errors)

        }
        render(template: 'show', model: [chuTro: chuTroInstance])
    }

    def view() {
        if(request.xhr) {
            render(template: 'show', model: [chuTro: chuTro])
        } else {
            render(view: '/base/notAjax', model:[template: 'show',map: [chuTro: chuTro]])
        }
    }
}
