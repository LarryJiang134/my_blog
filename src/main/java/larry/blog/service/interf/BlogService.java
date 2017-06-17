package larry.blog.service.interf;

import larry.blog.entity.Blog;

import java.util.List;

/**
 * Created by hangyanjiang on 2017/6/15.
 */
public interface BlogService {

    public List<Blog> getBlogs();

    public Blog getBlog(int theId);

    public void saveBlog(Blog theBlog);

    public void deleteBlog(int theId);
}
