package com.quanlinhatro



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

class ChuTroController extends BaseController {
    def index () {
        redirect(action: 'list')
    }
    
    def list() 
    {
        render(view: 'list', model: [chuTros: ChuTro.list()])
    }
}
