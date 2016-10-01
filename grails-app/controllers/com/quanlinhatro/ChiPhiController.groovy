package com.quanlinhatro



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ChiPhiController extends BaseController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ChiPhi.list(params), model:[chiPhiInstanceCount: ChiPhi.count()]
    }

    def show(ChiPhi chiPhiInstance) {
        respond chiPhiInstance
    }

    def create() {
        respond new ChiPhi(params)
    }

    @Transactional
    def save(ChiPhi chiPhiInstance) {
        if (chiPhiInstance == null) {
            notFound()
            return
        }

        if (chiPhiInstance.hasErrors()) {
            respond chiPhiInstance.errors, view:'create'
            return
        }

        chiPhiInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'chiPhi.label', default: 'ChiPhi'), chiPhiInstance.id])
                redirect chiPhiInstance
            }
            '*' { respond chiPhiInstance, [status: CREATED] }
        }
    }

    def edit(ChiPhi chiPhiInstance) {
        respond chiPhiInstance
    }

    @Transactional
    def update(ChiPhi chiPhiInstance) {
        if (chiPhiInstance == null) {
            notFound()
            return
        }

        if (chiPhiInstance.hasErrors()) {
            respond chiPhiInstance.errors, view:'edit'
            return
        }

        chiPhiInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ChiPhi.label', default: 'ChiPhi'), chiPhiInstance.id])
                redirect chiPhiInstance
            }
            '*'{ respond chiPhiInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ChiPhi chiPhiInstance) {

        if (chiPhiInstance == null) {
            notFound()
            return
        }

        chiPhiInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ChiPhi.label', default: 'ChiPhi'), chiPhiInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'chiPhi.label', default: 'ChiPhi'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
