package com.quanlinhatro

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
class PhongTroController extends BaseController {


    def index() {
        redirect(action: 'table')
    }



    def create() {
        if(request.xhr) {
            render(template: 'create', model: [phong: new PhongTro()])
        } else {
            render(view: '/base/notAjax', model:[template: '/phongTro/create',map: [phong: new PhongTro()]])
        }
    }

    def save(long id) {

    }

    def edit(PhongTro phongTroInstance) {
        respond phongTroInstance
    }

    def show() {
        render (template: 'show')
    }

    @Secured('permitAll')
    def detail() {
    }

    def table(long id) {
        //get khu
        render(template: 'table', model:[phongs: PhongTro.list()])// khu: khuInstance
    }

    def view(long id) {
        //get phongInstance
        render(template: 'view', model:[ phong: new PhongTro()])// khu: khuInstance
    }
}
