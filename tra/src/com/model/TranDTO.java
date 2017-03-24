package com.model;

/**
 * Created by Dong¶« on 2017/3/24.
 */
public class TranDTO {
    Translator translator = null;
    Certificate certificate = null;

    public Translator getTranslator() {
        return translator;
    }

    public void setTranslator(Translator translator) {
        this.translator = translator;
    }

    public Certificate getCertificate() {
        return certificate;
    }

    public void setCertificate(Certificate certificate) {
        this.certificate = certificate;
    }
}
