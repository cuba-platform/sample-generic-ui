package com.company.sample.web.order;

import com.haulmont.cuba.gui.components.AbstractLookup;
import com.haulmont.cuba.gui.components.actions.CreateAction;
import com.haulmont.cuba.gui.components.actions.EditAction;

import javax.inject.Named;
import java.util.Map;

public class OrderBrowse3 extends AbstractLookup {
    @Named("ordersTable.edit")
    private EditAction ordersTableEdit;
    @Named("ordersTable.create")
    private CreateAction ordersTableCreate;

    @Override
    public void init(Map<String, Object> params) {
        ordersTableCreate.setWindowId("sample$Order.edit2");
        ordersTableEdit.setWindowId("sample$Order.edit2");
    }
}