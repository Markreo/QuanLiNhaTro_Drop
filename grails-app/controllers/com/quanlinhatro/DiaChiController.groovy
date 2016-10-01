package com.quanlinhatro



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DiaChiController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond DiaChi.list(params), model:[diaChiInstanceCount: DiaChi.count()]
    }

    def show(DiaChi diaChiInstance) {
        respond diaChiInstance
    }

    def create() {
        respond new DiaChi(params)
    }

    @Transactional
    def save(DiaChi diaChiInstance) {
        if (diaChiInstance == null) {
            notFound()
            return
        }

        if (diaChiInstance.hasErrors()) {
            respond diaChiInstance.errors, view:'create'
            return
        }

        diaChiInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'diaChi.label', default: 'DiaChi'), diaChiInstance.id])
                redirect diaChiInstance
            }
            '*' { respond diaChiInstance, [status: CREATED] }
        }
    }

    def edit(DiaChi diaChiInstance) {
        respond diaChiInstance
    }

    @Transactional
    def update(DiaChi diaChiInstance) {
        if (diaChiInstance == null) {
            notFound()
            return
        }

        if (diaChiInstance.hasErrors()) {
            respond diaChiInstance.errors, view:'edit'
            return
        }

        diaChiInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'DiaChi.label', default: 'DiaChi'), diaChiInstance.id])
                redirect diaChiInstance
            }
            '*'{ respond diaChiInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(DiaChi diaChiInstance) {

        if (diaChiInstance == null) {
            notFound()
            return
        }

        diaChiInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'DiaChi.label', default: 'DiaChi'), diaChiInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'diaChi.label', default: 'DiaChi'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
