package com.hospital.medical.domain;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import javax.persistence.Embedded;

@RooJavaBean
@RooToString
@RooEntity(inheritanceType="TABLE_PER_CLASS", table="Societe")
public class Societe extends LaboTrace{
    @NotNull
    @Column(unique = true)
    private String cdos;
    private String raison;
    @Embedded
    private Adresse adresse;
}
