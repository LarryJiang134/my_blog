package larry.blog.dao;

import larry.blog.dao.interf.BlogDAO;
import larry.blog.entity.Blog;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by hangyanjiang on 2017/6/15.
 */

@Repository
public class BlogDAOImpl implements BlogDAO {

    // need to inject the session factory
    @Autowired
    private SessionFactory sessionFactory;

    public List<Blog> getBlogs() {

        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // create a query ... sort by id
        Query<Blog> theQuery =
                currentSession.createQuery("from Blog order by createTime",
                        Blog.class);

        // execute query and get result list
        List<Blog> blog_list = theQuery.getResultList();

        // return the results
        return blog_list;

    }

    public Blog getBlog(int theId) {
        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // now retrieve/read from database using the primary key
        Blog theBlog = currentSession.get(Blog.class, theId);

        return theBlog;
    }

    public void saveBlog(Blog theBlog) {
        // get current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // save/update the customer ... finally LOL
        currentSession.saveOrUpdate(theBlog);
    }

    public void deleteBlog(int theId) {
        // get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // delete object from database with primary key
        Query theQuery =
                currentSession.createQuery("delete from Blog where id=:blogId");
        theQuery.setParameter("blogId", theId);

        theQuery.executeUpdate();
    }

}
