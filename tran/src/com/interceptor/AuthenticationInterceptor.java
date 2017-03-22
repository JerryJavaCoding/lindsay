package com.interceptor;

import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;


public class AuthenticationInterceptor implements Interceptor {
    @Override
    public void intercept(Invocation inv) {
        inv.invoke();
    }
}
