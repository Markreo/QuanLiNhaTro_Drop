package com.quanlinhatro



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DichVuController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond DichVu.list(params), model:[dichVuInstanceCount: DichVu.count()]
    }

    def show(DichVu dichVuInstance) {
        respond dichVuInstance
    }

    def create() {
        respond new DichVu(params)
    }

    @Transactional
    def save(DichVu dichVuInstance) {
        if (dichVuInstance == null) {
            notFound()
            return
        }

        if (dichVuInstance.hasErrors()) {
            respond dichVuInstance.errors, view:'create'
            return
        }

        dichVuInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'dichVu.label', default: 'DichVu'), dichVuInstance.id])
                redirect dichVuInstance
            }
            '*' { respond dichVuInstance, [status: CREATED] }
        }
    }

    def edit(DichVu dichVuInstance) {
        respond dichVuInstance
    }

    @Transactional
    def update(DichVu dichVuInstance) {
        if (dichVuInstance == null) {
            notFound()
            return
        }

        if (dichVuInstance.hasErrors()) {
            respond dichVuInstance.errors, view:'edit'
            return
        }

        dichVuInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'DichVu.label', default: 'DichVu'), dichVuInstance.id])
                redirect dichVuInstance
            }
            '*'{ respond dichVuInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(DichVu dichVuInstance) {

        if (dichVuInstance == null) {
            notFound()
            return
        }

        dichVuInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'DichVu.label', default: 'DichVu'), dichVuInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'dichVu.label', default: 'DichVu'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
