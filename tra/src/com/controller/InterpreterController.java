package com.controller;


import com.jfinal.core.Controller;

import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;
import com.mchange.v2.lang.StringUtils;
import com.model.*;
import com.sun.prism.impl.Disposer;


import java.util.List;
import java.util.function.IntConsumer;

/**
 * Created by 宋琳琳 on 2017/3/4 0004.
 */

public class InterpreterController extends Controller {
    public void index(){
        Translator translator= (Translator) getSession().getAttribute("translator");
        int id=translator.get("Id");
        List forders = Forder.dao.find("SELECT * FROM forder where trid = "+id+" and dealing='已接单'");
        setAttr("forders",forders);
        List foreigners = Foreigner.dao.find("SELECT * FROM foreigner where Id in (SELECT fid FROM forder where trid = "+id+")");
        setAttr("foreigners",foreigners);
        render("myorder.jsp");//查询已接订单


    }
    public void gotoinfo(){
        List translators = Translator.dao.find("SELECT translator.tname,translator.Id,translator.tidno,translator.tsex," +
                "translator.tage,translator.tel,translator.temail,translator.tlanguage,certificate.cname," +
                "certificate.cpic FROM translator,certificate WHERE translator.Id=certificate.tId and translator.Id="+getParaToInt()+"");
        setAttr("translators",translators);
        render("tinfo.jsp");
    }

    public void dotorder() {render("torder.jsp");}

    public void docpic(){
        render("cpic.jsp");
    }

    public void dotupdate() {
        List translators=Translator.dao.find("select * from translator where Id = "+getParaToInt()+"");
        setAttr("translators",translators);
        render("updatetinfo.jsp");
    }

    public void dottupdate(){
        Translator translator=getModel(Translator.class);
        translator.update();
        System.out.println("修改成功");
        List translators=Translator.dao.find("select * from translator where Id = "+getParaToInt()+"");
        setAttr("translators",translators);
        render("updatetinfo.jsp");
    }

    public void business(){
        List forders = Forder.dao.find("SELECT * FROM forder where dealing='未接单'");
        setAttr("forders",forders);
        render("torder.jsp");//查询订单
    }
    public void selectorder(){
        List forders = Forder.dao.find("SELECT * FROM forder where Id = "+getParaToInt()+"");
        setAttr("forder",forders.get(0));
        List foreigners = Foreigner.dao.find("SELECT * FROM foreigner where Id =(SELECT fid FROM forder where Id = "+getParaToInt()+")");
        setAttr("foreigner",foreigners.get(0));
        render("selectorder.jsp");//订单详情
    }
    public void dealorder(){
        Forder forder=getModel(Forder.class);
        Translator translator = getSessionAttr("translator");
        forder.set("trid",translator.get("Id"));
        forder.set("dealing", "picked up");
        forder.update();
        System.out.println("修改成功");
//        render("myorder.jsp");//接单
        index();
    }
    public void myorder(){
        List forders = Forder.dao.find("SELECT * FROM forder where trid = "+getParaToInt()+" and dealing='已接单'");
        setAttr("forders",forders);
        List foreigners = Foreigner.dao.find("SELECT * FROM foreigner where Id in (SELECT fid FROM forder where trid = "+getParaToInt()+")");
        setAttr("foreigners",foreigners);
        render("myorder.jsp");//查询已接订单
    }
    public void dotsafe(){
        Translator translator=getModel(Translator.class);
        translator.update();
        System.out.println("修改成功");
        List translators=Translator.dao.find("select * from translator where Id = "+getParaToInt()+"");
        setAttr("translators",translators);
        render("tsafe.jsp");
    }
    public void dotvoucher() {
        List tvouchers = Tvoucher.dao.find("SELECT * FROM tvoucher WHERE traid="+getParaToInt()+"");
        setAttr("tvouchers",tvouchers);
        render("tvoucher.jsp");
    }
    /**
     * 信用分算法
     */
    public void gotocredit() {
        Integer fid = getParaToInt();
        Translator translator=Translator.dao.findById(fid);
        int infoScore=0;final int infoMaxScore=9;
        for (Object s : translator._getAttrValues()) {
            String mesUnit=null;
            if (s instanceof String)
                mesUnit=(String)s;
            else
                mesUnit=(Integer)s+"";
            if (StringUtils.nonEmptyString(mesUnit)){
                infoScore++;
            }
        }
        int infoPercent=infoScore/infoMaxScore;
        setAttr("infoPercent", infoPercent);
        List<Forder> forders = Forder.dao.find("SELECT id FROM forder WHERE completed='已完成' and trid=" + fid);
        setAttr("compOrderNum", forders.size());
        double finalScore=infoPercent*0.7+ forders.size()*0.3;
        setAttr("finalScore", finalScore);
        render("tcredit.jsp");
    }


}