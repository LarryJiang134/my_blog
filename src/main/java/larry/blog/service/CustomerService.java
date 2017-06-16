package larry.blog.service;

import larry.blog.entity.Customer;

import java.util.List;

/**
 * Created by hangyanjiang on 2017/6/15.
 */


public interface CustomerService {

    public List<Customer> getCustomers();

    public void saveCustomer(Customer theCustomer);

    public Customer getCustomer(int theId);

    public void deleteCustomer(int theId);

}
