package sample.web.customer;

import com.haulmont.cuba.gui.components.AbstractEditor;
import sample.entity.Customer;

import java.util.Map;

public class CustomerEdit extends AbstractEditor<Customer> {

    @Override
    public void init(Map<String, Object> params) {
        // The same can be done using the <dialogMode width="300" forceDialog="true"/> element in the XML descriptor
        getDialogOptions()
                .setWidth("300px") // fixed width
                .setForceDialog(true); // always open as a dialog
    }
}