package larry.blog.service;

import larry.blog.dao.interf.BlogDAO;
import larry.blog.entity.Blog;
import larry.blog.service.interf.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by hangyanjiang on 2017/6/15.
 */

@Service
public class BlogServiceImpl implements BlogService {

    // need to inject blog dao
    @Autowired
    private BlogDAO blogDAO;

    @Transactional
    public List<Blog> getBlogs() {
        return blogDAO.getBlogs();
    }

    @Transactional
    public Blog getBlog(int theId) {
        return blogDAO.getBlog(theId);
    }

    @Transactional
    public void saveBlog(Blog theBlog) {
        blogDAO.saveBlog(theBlog);
    }

    @Transactional
    public void deleteBlog(int theId) {
        blogDAO.deleteBlog(theId);
    }

}
