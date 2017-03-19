package com.common;

import com.controller.*;
import com.interceptor.AuthenticationInterceptor;
import com.jfinal.config.*;
import com.jfinal.ext.handler.ContextPathHandler;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.render.ViewType;
import com.jfinal.template.Engine;
import com.model.*;


import java.lang.*;

/**
 * Created by Administrator on 2017/2/14.
 */
public class MainConfig extends JFinalConfig {
    @Override
    public void configConstant(Constants me) {
        PropKit.use("config.properties");
        me.setViewType(ViewType.JSP);
        me.setEncoding("UTF-8");
        me.setDevMode(true);

    }

    public void configRoute(Routes me) {
        //���е�ҳ�����jsp����������
        me.setBaseViewPath("/WEB-INF/view");
        //Ĭ���Զ�������¼ҳ
        me.add("/", IndexController.class);
        me.add("/admin", AdminController.class);
        me.add("/translator", InterpreterController.class);
        me.add("/foreigner", ForeignerController.class);
    }

    public void configEngine(Engine me) {

    }

    public void configPlugin(Plugins me) {
        C3p0Plugin c3p0Plugin = new C3p0Plugin(PropKit.get("jdbcUrl"), PropKit.get("user"), PropKit.get("password"));
        ActiveRecordPlugin arp = new ActiveRecordPlugin(c3p0Plugin);
        arp.setShowSql(true);
        //ע�������Сд���У�Ҫ������д
        arp.addMapping("admin","Id", Admin.class);
        arp.addMapping("translator","Id", Translator.class);
        arp.addMapping("foreigner","Id", Foreigner.class);
        arp.addMapping("forder","Id",Forder.class);
        arp.addMapping("certificate","Id",Certificate.class);
        arp.addMapping("tvoucher","tvid",Tvoucher.class);
        arp.addMapping("fvoucher","fvid",Fvoucher.class);
        me.add(c3p0Plugin);
        me.add(arp);
    }

    /**
     * ������������������֤�û��Ƿ��¼,���鿴�ֲ�AOP�½�
     * @param me
     */
    public void configInterceptor(Interceptors me) {
        me.addGlobalActionInterceptor(new AuthenticationInterceptor());
    }

    @Override
    public void configHandler(Handlers me) {
        me.add(new ContextPathHandler());
    }
}
