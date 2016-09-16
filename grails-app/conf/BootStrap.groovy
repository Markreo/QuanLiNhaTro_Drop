import com.quanlinhatro.auth.*;
class BootStrap {

    def init = { servletContext ->
        if(!User.list()) {
            def adminRole = Role.findOrSaveWhere(authority: 'ROLE_ADMIN', name: 'Admin')
            println("!2")
            def admin = User.findOrSaveWhere(username: 'admin', password: '12345', enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false)
            println("!3")
            if (!admin.authorities.contains(adminRole)) {
                UserRole.create(admin, adminRole, true)
            }
        }
    }
    def destroy = {
    }
}
