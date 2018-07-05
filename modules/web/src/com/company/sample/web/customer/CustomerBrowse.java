package com.company.sample.web.customer;

import com.haulmont.cuba.gui.WindowParam;
import com.haulmont.cuba.gui.components.AbstractLookup;
import com.haulmont.cuba.gui.data.CollectionDatasource;
import com.company.sample.entity.Customer;
import com.company.sample.entity.Product;

import javax.inject.Inject;
import java.util.Map;
import java.util.UUID;

public class CustomerBrowse extends AbstractLookup {

    @Inject
    private CollectionDatasource<Customer, UUID> customersDs;

    @WindowParam
    private Product product;

    @Override
    public void init(Map<String, Object> params) {
        if (product != null && product.getName() != null) {
            getFrame().setCaption("Select a customer for " + product.getName());
        }
    }

    public void applyFilter() {
        customersDs.refresh();
    }
}