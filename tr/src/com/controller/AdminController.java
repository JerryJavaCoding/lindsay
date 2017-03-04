package com.controller;

import com.jfinal.core.Controller;
import com.model.Admin;

import com.model.Foreigner;
import com.model.Translator;


import java.util.List;

/**
 * Created by Administrator on 2017/2/14.
 */
public class AdminController extends Controller {
    public void index(){
        render("index.jsp");
    }
    public void gotologin(){
        render("login.jsp");
    }
    public void gotomain(){
        render("index.jsp");
    }
    //public void gotoupdate() { render("update.jsp");}
    //public void gotodelete() { render("tdelete.jsp");}
   // public void gotolist() {render("select_middle.jsp");}

    public void dologin(){
        String name = getPara("name");
        String password = getPara("password");
        String person = getPara("person");//获取单选按钮的角色
        if(person.equals("Interpreter")){
            List translators = Translator.dao.find("SELECT * FROM transltor WHERE tname = '" + name + "' AND tpwd = '" + password + "'");
            setAttr("translators", translators);
            if(translators.size() > 0){
                System.out.println("登录成功");
               gotomain();
            }else{
                System.out.println("登录失败");
                gotologin();
            }
            gotomain();
        }else if(person.equals("Foreigner")){
            List foreigners = Foreigner.dao.find("SELECT * FROM foreigner WHERE fname = '" + name + "' AND fpwd = '" + password + "'");
            setAttr("foreigners",foreigners);
            if (foreigners.size() > 0) {
                System.out.println("登录成功");
            } else {
                System.out.println("登录失败");
            }
        }else{
            List admin  =Admin.dao.find("SELECT * FROM admin WHERE name = '" + name + "' AND pwd = '" + password + "'");
            if (admin.size() > 0) {
                System.out.println("登录成功");
            } else {
                System.out.println("登录失败");
            }
        }
    }


    /**
     * 注意方法名只能全部小写
     */
    public void doregister(){

        Admin admin = getModel(Admin.class);
        admin.save();
        System.out.println("注册成功");
        gotologin();
    }



    public void dotregister(){

        Translator translator = getModel(Translator.class);
        translator.save();
        System.out.println("注册成功");
        gotologin();
    }

    public void dofregister(){

       Foreigner foreigner = getModel(Foreigner.class);
        foreigner.save();
        System.out.println("注册成功");
        gotologin();
    }

    public void dotupdate(){
        Translator translator=getModel(Translator.class);
        translator.update();
        System.out.println("修改成功");
        gotologin();
    }
    public void dotdelete(){
        Translator translator=getModel(Translator.class);
        translator.delete();
        System.out.println("删除成功");
        gotologin();
    }

    public void dotlist(){
        List translatorList=Translator.dao.find("select * from translator");
        setAttr("translatorList",translatorList);
        System.out.println("查询成功");
        render("list.jsp");
    }
}
