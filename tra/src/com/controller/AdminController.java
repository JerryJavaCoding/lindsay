package com.controller;

import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;
import com.jfinal.upload.UploadFile;
import com.model.*;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Created by Administrator on 2017/2/14.
 */
public class AdminController extends Controller {
    public void index() {
        List transalators = Translator.dao.find("SELECT * FROM translator");
        setAttr("transalators", transalators);
        render("atinfo.jsp");
    }


    public void gotoupdate() {
        render("updatetinfo.jsp");
    }

    public void gotologin() {
        render("index.jsp");
    }


    /**
     * 注意方法名只能全部小写
     */
    public void doregister() {

        Admin admin = getModel(Admin.class);
        admin.save();
        System.out.println("注册成功");
        gotologin();
    }

    public void dotregister() {
        UploadFile cpic = getFile("cpicImg");

        String cpicName = getPara("cpicName");

        Certificate certificate = new Certificate();
        certificate.set("cname", cpicName);
        certificate.set("cpic", cpic.getFileName());
        Translator translator = getModel(Translator.class);
        translator.save();
        certificate.set("tid", translator.get("Id"));
        certificate.save();
        System.out.println("注册成功");

        redirect("/index");
    }


    public void dofregister() {
        Foreigner foreigner = getModel(Foreigner.class);
        foreigner.save();
        System.out.println("注册成功");
        List foreigners = Foreigner.dao.find("select * from foreigner where Id=(select max(Id) from foreigner)");
        render("frmiddle.jsp");
    }

    public void selecttran() {
        List<Translator> transalators = Translator.dao.find("SELECT * FROM translator");
        List<TranDTO> tranDTOs = new ArrayList<TranDTO>(transalators.size());
        for (Translator transalator : transalators) {

            List<Certificate> certificates = Certificate.dao.find("select * from certificate where tid=" + transalator.get("Id"));
            if (certificates.size() > 0) {
                Certificate certificate = certificates.get(0);
                TranDTO tranDTO = new TranDTO();
                tranDTO.setTranslator(transalator);
                tranDTO.setCertificate(certificate);
                tranDTOs.add(tranDTO);
            }
        }
        setAttr("tranDTOs", tranDTOs);
        render("atinfo.jsp");//查询译员信息
    }

    public void selectfore() {
        List foreigners = Foreigner.dao.find("SELECT * FROM foreigner");
        setAttr("foreigners", foreigners);
        render("afinfo.jsp");//查询外商信息
    }

    public void deletetran() {
        Translator translator = getModel(Translator.class);
        translator.deleteById(getParaToInt());
        System.out.println("删除成功");
        selecttran();//删除译员
    }

    public void deletefore() {
        Foreigner foreigner = getModel(Foreigner.class);
        foreigner.deleteById(getParaToInt());
        System.out.println("删除成功");
        selectfore();//删除外商
    }

    public void updateapwd() {
        Admin admin = getModel(Admin.class);
        admin.update();
        System.out.println("修改成功");
        List admins = Admin.dao.find("select * from admin where Id = " + getParaToInt() + "");
        setAttr("admins", admins);
        render("asafe.jsp");//修改管理员密码
    }

    public void doallvoucher() {
        List tvouchers = Tvoucher.dao.find("SELECT * FROM tvoucher");
        setAttr("tvouchers", tvouchers);
        List fvouchers = Fvoucher.dao.find("SELECT * FROM fvoucher");
        setAttr("fvouchers", fvouchers);
        render("allvoucher.jsp");//查询所有的现金券
    }

    public void deletetvoucher() {
        Tvoucher tvoucher = getModel(Tvoucher.class);
        tvoucher.deleteById(getParaToInt());
        System.out.println("删除成功");
        doallvoucher();//删除译员的现金券
    }

    public void deletefvoucher() {
        Fvoucher fvoucher = getModel(Fvoucher.class);
        fvoucher.deleteById(getParaToInt());
        System.out.println("删除成功");
        doallvoucher();//删除外商的现金券
    }

    public void selecttorder() {
        List forders = Forder.dao.find("SELECT * FROM forder where dealing='已接单'");
        setAttr("forders", forders);
        render("torder.jsp");//查询译员已接的订单
    }

    public void deletetorder() {
        Integer Id = getParaToInt("Id");
        String trid = getPara("trid");
        Forder forder = getModel(Forder.class);
        forder.deleteById(Id);
        System.out.println("删除成功");
        List forders = Forder.dao.find("SELECT * FROM forder where dealing='已接单'");
        setAttr("forders", forders);
        render("torder.jsp");//删除译员已接的订单
    }

    public void selectforder() {
        List forders = Forder.dao.find("SELECT * FROM forder ");
        setAttr("forders", forders);
        render("forder.jsp");//查询外商发布的订单
    }

    public void deleteforder() {
        Integer Id = getParaToInt("Id");
        String fid = getPara("fid");
        Forder forder = getModel(Forder.class);
        forder.deleteById(Id);
        System.out.println("删除成功");
        List forders = Forder.dao.find("SELECT * FROM forder");
        setAttr("forders", forders);
        render("forder.jsp");//删除外商发布的订单
    }
}
