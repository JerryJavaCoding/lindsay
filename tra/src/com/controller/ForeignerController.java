package com.controller;

import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;
import com.model.*;


import java.util.Date;
import java.util.List;

/**
 * Created by 宋琳琳 on 2017/3/7 0007.
 */
public class ForeignerController extends Controller {
    public void index(){
        Foreigner foreigner= (Foreigner) getSession().getAttribute("foreigner");
        int id=foreigner.get("Id");
        List forders = Forder.dao.find("SELECT * FROM forder WHERE fid="+id);
        setAttr("forders",forders);
        render("myorder.jsp");
    }
    public void gotoinfo(){
        List foreigners = Foreigner.dao.find("SELECT * FROM foreigner WHERE Id="+getParaToInt()+"");
        setAttr("foreigners",foreigners);
        render("finfo.jsp");
    }//登录之后的个人资料页

    public void dofupdate(){
        List foreigners= Foreigner.dao.find("select * from foreigner where Id = "+getParaToInt()+"");
        setAttr("foreigners",foreigners);
        render("updatefinfo.jsp");
    }//点击修改后的跳转页面

    public void doffupdate(){
        Foreigner foreigner=getModel(Foreigner.class);
        foreigner.update();
        System.out.println("修改成功");
        List foreigners=Foreigner.dao.find("select * from foreigner where Id = "+getParaToInt()+"");
        setAttr("foreigners",foreigners);
        render("updatefinfo.jsp");
    }//更新个人资料
    public void gotoforder(){
        List forders = Forder.dao.find("SELECT * FROM forder");
        setAttr("forders",forders);
        render("forder.jsp");
    }
    public void addorder(){
        Forder forder = getModel(Forder.class);
        forder.save();
        System.out.println("订单添加成功");
//        render("myorder.jsp");
        Foreigner foreigner = getSessionAttr("foreigner");
        redirect("/foreigner/selectorder/"+foreigner.get("Id"));
        }

    public void selectorder(){
        List forders = Forder.dao.find("SELECT * FROM forder WHERE fid="+getParaToInt()+"");
        setAttr("forders",forders);
        render("myorder.jsp");
    }//查看订单
    public void deleteforder(){
        Integer Id=getParaToInt("Id");
        String fid=getPara("fid");
        Forder forder=getModel(Forder.class);
        forder.deleteById(Id);
        System.out.println("删除成功");
        List forders = Forder.dao.find("SELECT * FROM forder WHERE fid='"+fid+"'");
        setAttr("forders", forders);
        render("myorder.jsp");
    }
    public void updatefpwd(){
        Foreigner foreigner=getModel(Foreigner.class);
        foreigner.update();
        System.out.println("修改成功");
        List foreigners=Foreigner.dao.find("select * from foreigner where Id = "+getParaToInt()+"");
        setAttr("foreigners",foreigners);
        render("fsafe.jsp");
    }//修改密码

    public void dofvoucher() {
        List fvouchers = Fvoucher.dao.find("SELECT * FROM fvoucher WHERE forid="+getParaToInt()+"");
        setAttr("fvouchers",fvouchers);
        render("fvoucher.jsp");
    }//查询现金券

}

