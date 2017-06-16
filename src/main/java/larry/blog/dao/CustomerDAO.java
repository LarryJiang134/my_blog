package larry.blog.dao;

import larry.blog.entity.Customer;

import java.util.List;

/**
 * Created by hangyanjiang on 2017/6/15.
 */
public interface CustomerDAO {

    public List<Customer> getCustomers();

    public void saveCustomer(Customer theCustomer);

    public Customer getCustomers(int theId);

    public void deleteCustomer(int theId);

}
