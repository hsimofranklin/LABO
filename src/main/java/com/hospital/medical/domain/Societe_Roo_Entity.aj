// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.hospital.medical.domain;

import com.hospital.medical.domain.Societe;
import java.lang.Long;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

privileged aspect Societe_Roo_Entity {
    
    declare @type: Societe: @Entity;
    
    declare @type: Societe: @Table(name = "Societe");
    
    declare @type: Societe: @Inheritance(strategy = InheritanceType.TABLE_PER_CLASS);
    
    public static long Societe.countSocietes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Societe o", Long.class).getSingleResult();
    }
    
    public static List<Societe> Societe.findAllSocietes() {
        return entityManager().createQuery("SELECT o FROM Societe o", Societe.class).getResultList();
    }
    
    public static Societe Societe.findSociete(Long id) {
        if (id == null) return null;
        return entityManager().find(Societe.class, id);
    }
    
    public static List<Societe> Societe.findSocieteEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Societe o", Societe.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}