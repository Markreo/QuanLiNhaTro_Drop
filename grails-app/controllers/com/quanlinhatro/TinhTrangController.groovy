package com.quanlinhatro



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TinhTrangController  extends BaseController{

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TinhTrang.list(params), model:[tinhTrangInstanceCount: TinhTrang.count()]
    }

    def show(TinhTrang tinhTrangInstance) {
        respond tinhTrangInstance
    }

    def create() {
        respond new TinhTrang(params)
    }

    @Transactional
    def save(TinhTrang tinhTrangInstance) {
        if (tinhTrangInstance == null) {
            notFound()
            return
        }

        if (tinhTrangInstance.hasErrors()) {
            respond tinhTrangInstance.errors, view:'create'
            return
        }

        tinhTrangInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tinhTrang.label', default: 'TinhTrang'), tinhTrangInstance.id])
                redirect tinhTrangInstance
            }
            '*' { respond tinhTrangInstance, [status: CREATED] }
        }
    }

    def edit(TinhTrang tinhTrangInstance) {
        respond tinhTrangInstance
    }

    @Transactional
    def update(TinhTrang tinhTrangInstance) {
        if (tinhTrangInstance == null) {
            notFound()
            return
        }

        if (tinhTrangInstance.hasErrors()) {
            respond tinhTrangInstance.errors, view:'edit'
            return
        }

        tinhTrangInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TinhTrang.label', default: 'TinhTrang'), tinhTrangInstance.id])
                redirect tinhTrangInstance
            }
            '*'{ respond tinhTrangInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TinhTrang tinhTrangInstance) {

        if (tinhTrangInstance == null) {
            notFound()
            return
        }

        tinhTrangInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TinhTrang.label', default: 'TinhTrang'), tinhTrangInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tinhTrang.label', default: 'TinhTrang'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
