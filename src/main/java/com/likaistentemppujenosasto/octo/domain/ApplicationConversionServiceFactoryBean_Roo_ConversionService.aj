// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.likaistentemppujenosasto.octo.domain;

import com.likaistentemppujenosasto.octo.domain.ApplicationConversionServiceFactoryBean;
import com.likaistentemppujenosasto.octo.domain.OctoUser;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<OctoUser, String> ApplicationConversionServiceFactoryBean.getOctoUserToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.likaistentemppujenosasto.octo.domain.OctoUser, java.lang.String>() {
            public String convert(OctoUser octoUser) {
                return new StringBuilder().append(octoUser.getUsername()).toString();
            }
        };
    }
    
    public Converter<Long, OctoUser> ApplicationConversionServiceFactoryBean.getIdToOctoUserConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.likaistentemppujenosasto.octo.domain.OctoUser>() {
            public com.likaistentemppujenosasto.octo.domain.OctoUser convert(java.lang.Long id) {
                return OctoUser.findOctoUser(id);
            }
        };
    }
    
    public Converter<String, OctoUser> ApplicationConversionServiceFactoryBean.getStringToOctoUserConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.likaistentemppujenosasto.octo.domain.OctoUser>() {
            public com.likaistentemppujenosasto.octo.domain.OctoUser convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), OctoUser.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getOctoUserToStringConverter());
        registry.addConverter(getIdToOctoUserConverter());
        registry.addConverter(getStringToOctoUserConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}