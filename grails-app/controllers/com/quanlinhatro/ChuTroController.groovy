package com.quanlinhatro



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ChuTroController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ChuTro.list(params), model:[chuTroInstanceCount: ChuTro.count()]
    }

    def show(ChuTro chuTroInstance) {
        respond chuTroInstance
    }

    def create() {
        respond new ChuTro(params)
    }

    @Transactional
    def save(ChuTro chuTroInstance) {
        if (chuTroInstance == null) {
            notFound()
            return
        }

        if (chuTroInstance.hasErrors()) {
            respond chuTroInstance.errors, view:'create'
            return
        }

        chuTroInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'chuTro.label', default: 'ChuTro'), chuTroInstance.id])
                redirect chuTroInstance
            }
            '*' { respond chuTroInstance, [status: CREATED] }
        }
    }

    def edit(ChuTro chuTroInstance) {
        respond chuTroInstance
    }

    @Transactional
    def update(ChuTro chuTroInstance) {
        if (chuTroInstance == null) {
            notFound()
            return
        }

        if (chuTroInstance.hasErrors()) {
            respond chuTroInstance.errors, view:'edit'
            return
        }

        chuTroInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ChuTro.label', default: 'ChuTro'), chuTroInstance.id])
                redirect chuTroInstance
            }
            '*'{ respond chuTroInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ChuTro chuTroInstance) {

        if (chuTroInstance == null) {
            notFound()
            return
        }

        chuTroInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ChuTro.label', default: 'ChuTro'), chuTroInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'chuTro.label', default: 'ChuTro'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
