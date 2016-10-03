package com.quanlinhatro

import com.quanlinhatro.auth.User
import grails.plugin.springsecurity.annotation.Secured

@Secured('IS_AUTHENTICATED_FULLY')
class BaseController {

    def springSecurityService
    User user
    def systemService


    def beforeInterceptor = {
        user = springSecurityService.currentUser as User
        if (user) {
            session.user = user
        }
    }
}
