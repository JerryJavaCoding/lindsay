package com.controller;

import com.jfinal.core.Controller;
import com.model.Admin;
import com.model.Foreigner;
import com.model.Translator;

import java.util.List;

/**
 * Created by Dong�� on 2017/2/16.
 */
public class IndexController extends Controller {
    public void index() {
        render("index.jsp");
    }
    public void gotologin(){render("index.jsp");}
    public void tologin(){
        String name = getPara("name");
        String password = getPara("password");
        String person = getPara("person");//获取单选按钮的角色
        if(person.equals("Interpreter")){
            List translators = Translator.dao.find("SELECT * FROM translator WHERE tname = '" + name + "' AND tpwd = '" + password + "'");
            setAttr("translators", translators);
            if(translators.size() > 0){
                setSessionAttr("translator",translators.get(0));
                System.out.println("登录成功");
                redirect("/translator/index");
//                render("dotlmiddle.jsp");//跳转到翻译员登录的中间页面
            }else{
                System.out.println("登录失败");
                render("index.jsp?error=true");
            }
            //  gotoinfo();
        }else if(person.equals("Foreigner")){
            List foreigners = Foreigner.dao.find("SELECT * FROM foreigner WHERE fname = '" + name + "' AND fpwd = '" + password + "'");
            setAttr("foreigners",foreigners);
            if (foreigners.size() > 0) {
                setSessionAttr("foreigner",foreigners.get(0));
                System.out.println("登录成功");
                redirect("/foreigner/index");
//                render("dofmiddle.jsp");//跳转到外商登录的中间页面
            } else {
                System.out.println("登录失败");
                render("index.jsp?error=true");
            }
        }else{
            List admin  = Admin.dao.find("SELECT * FROM admin WHERE username = '" + name + "' AND pwd = '" + password + "'");
            if (admin.size() > 0) {
                System.out.println("登录成功");

                redirect("/admin/index");
            } else {
                System.out.println("登录失败");
                render("index.jsp?error=true");
            }
        }
    }
}
