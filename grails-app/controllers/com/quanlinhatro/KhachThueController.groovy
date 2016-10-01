package com.quanlinhatro



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class KhachThueController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond KhachThue.list(params), model:[khachThueInstanceCount: KhachThue.count()]
    }

    def show(KhachThue khachThueInstance) {
        respond khachThueInstance
    }

    def create() {
        respond new KhachThue(params)
    }

    @Transactional
    def save(KhachThue khachThueInstance) {
        if (khachThueInstance == null) {
            notFound()
            return
        }

        if (khachThueInstance.hasErrors()) {
            respond khachThueInstance.errors, view:'create'
            return
        }

        khachThueInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'khachThue.label', default: 'KhachThue'), khachThueInstance.id])
                redirect khachThueInstance
            }
            '*' { respond khachThueInstance, [status: CREATED] }
        }
    }

    def edit(KhachThue khachThueInstance) {
        respond khachThueInstance
    }

    @Transactional
    def update(KhachThue khachThueInstance) {
        if (khachThueInstance == null) {
            notFound()
            return
        }

        if (khachThueInstance.hasErrors()) {
            respond khachThueInstance.errors, view:'edit'
            return
        }

        khachThueInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'KhachThue.label', default: 'KhachThue'), khachThueInstance.id])
                redirect khachThueInstance
            }
            '*'{ respond khachThueInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(KhachThue khachThueInstance) {

        if (khachThueInstance == null) {
            notFound()
            return
        }

        khachThueInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'KhachThue.label', default: 'KhachThue'), khachThueInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'khachThue.label', default: 'KhachThue'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
