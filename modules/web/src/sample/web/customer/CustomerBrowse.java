package sample.web.customer;

import com.haulmont.cuba.gui.components.AbstractLookup;
import com.haulmont.cuba.gui.data.CollectionDatasource;
import sample.entity.Customer;

import javax.inject.Inject;
import java.util.UUID;

public class CustomerBrowse extends AbstractLookup {

    @Inject
    private CollectionDatasource<Customer, UUID> customersDs;

    public void applyFilter() {
        customersDs.refresh();
    }
}