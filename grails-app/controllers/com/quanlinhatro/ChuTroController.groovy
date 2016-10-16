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
            render(view: 'edit', model: [chuTro: chuTro])
        }
    }

    def save(long id) {
        println("params: " + params)
        def chuTro = id ? ChuTro.get(id) : new ChuTro(params)
        if(id) {
            params.remove("id")
            chuTro.properties = params
        }
        chuTro.taiKhoan = user
        if(chuTro.hasErrors() || !chuTro.save(flush: true)) {
            println("err")
        }
        else {
            //save Khu
            println "save"
            def tens = params.list("khutro.ten")
            def diaChis = params.list("khutro.diaChi")
            println(tens)
            println(diaChis)
            tens.eachWithIndex {ten, int index ->
                println(ten)
                println(diaChis[index])
                chuTro.addToKhus(ten: ten, diaChi: diaChis[index]).save()
            }
            chuTro.save(flush: true)

        }
    }
}
