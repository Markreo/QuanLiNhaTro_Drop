package com.quanlinhatro

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PhongTroController extends BaseController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        redirect(action: 'table')
    }



    def create() {
        respond new PhongTro(params)
    }

    @Transactional
    def save(PhongTro phongTroInstance) {
        if (phongTroInstance == null) {
            notFound()
            return
        }

        if (phongTroInstance.hasErrors()) {
            respond phongTroInstance.errors, view:'create'
            return
        }

        phongTroInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'phongTro.label', default: 'PhongTro'), phongTroInstance.id])
                redirect phongTroInstance
            }
            '*' { respond phongTroInstance, [status: CREATED] }
        }
    }

    def edit(PhongTro phongTroInstance) {
        respond phongTroInstance
    }

    @Transactional
    def update(PhongTro phongTroInstance) {
        if (phongTroInstance == null) {
            notFound()
            return
        }

        if (phongTroInstance.hasErrors()) {
            respond phongTroInstance.errors, view:'edit'
            return
        }

        phongTroInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PhongTro.label', default: 'PhongTro'), phongTroInstance.id])
                redirect phongTroInstance
            }
            '*'{ respond phongTroInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PhongTro phongTroInstance) {

        if (phongTroInstance == null) {
            notFound()
            return
        }

        phongTroInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PhongTro.label', default: 'PhongTro'), phongTroInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'phongTro.label', default: 'PhongTro'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
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
