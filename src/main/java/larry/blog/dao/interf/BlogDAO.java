package larry.blog.dao.interf;

import larry.blog.entity.Blog;

import java.util.List;

/**
 * Created by hangyanjiang on 2017/6/15.
 */
public interface BlogDAO {

    public List<Blog> getBlogs();

    public Blog getBlog(int theId);

    public void saveBlog(Blog theBlog);
}
