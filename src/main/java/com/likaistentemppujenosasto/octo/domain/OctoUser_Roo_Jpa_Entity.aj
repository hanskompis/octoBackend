// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.likaistentemppujenosasto.octo.domain;

import com.likaistentemppujenosasto.octo.domain.OctoUser;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect OctoUser_Roo_Jpa_Entity {
    
    declare @type: OctoUser: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long OctoUser.id;
    
    @Version
    @Column(name = "version")
    private Integer OctoUser.version;
    
    public Long OctoUser.getId() {
        return this.id;
    }
    
    public void OctoUser.setId(Long id) {
        this.id = id;
    }
    
    public Integer OctoUser.getVersion() {
        return this.version;
    }
    
    public void OctoUser.setVersion(Integer version) {
        this.version = version;
    }
    
}
