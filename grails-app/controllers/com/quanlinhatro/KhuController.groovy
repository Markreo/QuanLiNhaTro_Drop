package com.quanlinhatro

import org.codehaus.groovy.grails.web.json.JSONArray
import org.codehaus.groovy.grails.web.json.JSONObject

class KhuController extends BaseController {
    def index() {
        redirect(action: 'list')
    }

    def list() {
        def khus = Khu.findAllByChuTro(chuTro)
        if(khus) {
            if(request.xhr) {
                render(template: 'list', model: [khus: khus])
            } else {
                render(view: '/base/notAjax', model:[template: '/khu/list',map: [khus: khus]])
            }
        } else {
            if(request.xhr) {
                render(template: 'edit', model: [khu: new Khu()])
            } else {
                render(view: '/base/notAjax', model:[template: '/khu/edit',map: [khu: new Khu()]])
            }
        }
    }

    def table() {

    }

    def create() {
        if(request.xhr) {
            render(template: 'edit', model: [khu: new Khu()])
        } else {
            render(view: '/base/notAjax', model:[template: '/khu/edit',map: [khu: new Khu()]])
        }
    }


    def khus(){
        println("khus")
        def result = new JSONObject()
        def aaData = new JSONArray()
        def khus = Khu.createCriteria().list ([max: params.int("length"), offset: params.int("start"), sort: 'ten', order: 'asc']) {
            if (params.search) {
                or {
                    like('ten', "%${params.search}%")
                    like('diaChi', "%${params.search}%")
                }
            }
            //eq('deleted', false)
        }
        khus.each {Khu khu->
            def arr = new JSONArray()
            arr.put(khu.ten)
            arr.put(khu.diaChi)
            arr.put(khu.phongTros.size())
            arr.put(""" <a href="${createLink(controller: 'khu', action: 'edit', id: khu.id)}"  class="btn btn-default btn-xs purple"><i class="fa fa-edit"></i>Edit</a>
                    <a href="${createLink(controller: 'khu', action: 'delete', id: khu.id)}" class="btn btn-default btn-xs red" onclick="return confirm ('Are you sure?')"><i class="fa fa-trash-o"></i>Delete</a>
                    <a class="btn btn-default btn-xs blue"><i class="fa fa-find"></i>Show</a> """)
            aaData.put(arr)
        }

        int total = khus.totalCount
        result.put("draw", params.int("draw"))
        result.put("recordsTotal", total)
        result.put("recordsFiltered", total)
        result.put("data", aaData)

        render(result);
    }

    def show() {
        render (template: 'show')
    }

    def view(long id) {
        render (template: 'view', model:[khu: id ? Khu.get(id) : new Khu()])
    }
}
