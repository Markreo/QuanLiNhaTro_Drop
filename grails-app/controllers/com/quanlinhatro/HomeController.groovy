package com.quanlinhatro

import grails.plugin.springsecurity.annotation.Secured


class HomeController extends BaseController {
    @Secured('permitAll')
    def index() {
        if(springSecurityService.loggedIn) {
            render(view: 'dashboard')
        }
        else {
            render(view: 'index')
        }
    }
    
    def start() {
        render(view: 'start', model: [chuTro: chuTro])
    }

    def dashboard() {

    }

    @Secured('permitAll')
    def buysalerent() {

    }

    @Secured('permitAll')
    def register() {

    }
}
