package com.quanlinhatro

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
        else {
            //save Khu
            println "save"
            def tens = params.list("khutro.ten")
            def diaChis = params.list("khutro.diaChi")
            tens.eachWithIndex {ten, int index ->
                println(ten)
                println(diaChis[index])
                chuTroInstance.addToKhus(ten: ten, diaChi: diaChis[index]).save()
            }
            chuTroInstance.save(flush: true)
            render(template: 'show',model: [chuTro: chuTroInstance])
        }
    }

    def show() {
        render(template: 'show', model: [chuTro: chuTro])
    }
}
