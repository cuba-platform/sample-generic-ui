package com.company.sample.web.customer;

import com.haulmont.cuba.core.global.Metadata;
import com.haulmont.cuba.gui.components.AbstractEditor;
import com.haulmont.cuba.gui.data.Datasource;
import com.company.sample.entity.Customer;
import com.company.sample.entity.CustomerDetails;

import javax.inject.Inject;
import java.util.Map;

public class CustomerEdit extends AbstractEditor<Customer> {

    @Inject
    private Metadata metadata;
    @Inject
    private Datasource<CustomerDetails> detailsDs;
    @Inject
    private Datasource<Customer> customerDs;

    @Override
    public void init(Map<String, Object> params) {
        // The same can be done using the <dialogMode width="300" forceDialog="true"/> element in the XML descriptor
        getDialogOptions()
                .setWidth("300px") // fixed width
                .setForceDialog(true); // always open as a dialog
    }

    @Override
    protected void initNewItem(Customer customer) {
        // When the new customer is created, creates a nested CustomerDetails instance and link it with the new Customer instance
        customer.setDetails(metadata.create(CustomerDetails.class));
    }

    @Override
    protected void postInit() {
        // Makes the nested detailsDs datasource track and save changes in the CustomerDetails instance alongside with the edited Customer instance
        detailsDs.setItem(getItem().getDetails());
    }

    @Override
    public boolean isModified() {
        // Prevents showing "do you want to save changes?" dialog window in case only the nested CustomerDetails is created while the Customer is not
        return customerDs.isModified();
    }
}