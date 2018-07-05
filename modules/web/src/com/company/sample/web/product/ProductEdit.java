package com.company.sample.web.product;

import com.haulmont.bali.util.ParamsMap;
import com.haulmont.cuba.gui.components.AbstractEditor;
import com.haulmont.cuba.gui.components.PickerField;
import com.company.sample.entity.Product;

import javax.inject.Named;

public class ProductEdit extends AbstractEditor<Product> {

    @Named("fieldGroup.customer")
    private PickerField customerField;

    @Override
    protected void postInit() {
        customerField.getLookupAction().setLookupScreenParams(ParamsMap.of("product", getItem()));
    }
}