package com.quanlinhatro



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class KhuController extends BaseController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Khu.list(params), model:[khuInstanceCount: Khu.count()]
    }

    def show(Khu khuInstance) {
        respond khuInstance
    }

    def create() {
        respond new Khu(params)
    }

    @Transactional
    def save(Khu khuInstance) {
        if (khuInstance == null) {
            notFound()
            return
        }

        if (khuInstance.hasErrors()) {
            respond khuInstance.errors, view:'create'
            return
        }

        khuInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'khu.label', default: 'Khu'), khuInstance.id])
                redirect khuInstance
            }
            '*' { respond khuInstance, [status: CREATED] }
        }
    }

    def edit(Khu khuInstance) {
        respond khuInstance
    }

    @Transactional
    def update(Khu khuInstance) {
        if (khuInstance == null) {
            notFound()
            return
        }

        if (khuInstance.hasErrors()) {
            respond khuInstance.errors, view:'edit'
            return
        }

        khuInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Khu.label', default: 'Khu'), khuInstance.id])
                redirect khuInstance
            }
            '*'{ respond khuInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Khu khuInstance) {

        if (khuInstance == null) {
            notFound()
            return
        }

        khuInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Khu.label', default: 'Khu'), khuInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'khu.label', default: 'Khu'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
