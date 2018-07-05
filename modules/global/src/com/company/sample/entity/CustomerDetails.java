package com.company.sample.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import javax.persistence.Lob;
import com.haulmont.cuba.core.entity.StandardEntity;

@Table(name = "SAMPLE_CUSTOMER_DETAILS")
@Entity(name = "sample$CustomerDetails")
public class CustomerDetails extends StandardEntity {
    private static final long serialVersionUID = -5640998712752195643L;

    @Lob
    @Column(name = "ADDRESS")
    protected String address;

    @Lob
    @Column(name = "NOTE")
    protected String note;

    public void setNote(String note) {
        this.note = note;
    }

    public String getNote() {
        return note;
    }


    public void setAddress(String address) {
        this.address = address;
    }

    public String getAddress() {
        return address;
    }

}