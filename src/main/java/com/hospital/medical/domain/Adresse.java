package com.hospital.medical.domain;

import javax.persistence.Embeddable;

@Embeddable
public class Adresse {

    private String adresse;

    private String tel1;

    private String tel2;

    private String tel3;

    private String fax;

    private String email;

    private String stat;
}
