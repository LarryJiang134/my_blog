package larry.blog.controller.front;

import larry.blog.entity.Blog;
import larry.blog.service.interf.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by hangyanjiang on 2017/6/18.
 */

@Controller
@RequestMapping("/blog")
public class BlogController {

    @Autowired
    private BlogService blogService;

    @GetMapping("/show")
    public String getBlog(@RequestParam("blogId") Integer theId, Model theModel) {

        // get the blog from the service
        Blog theBlog = blogService.getBlog(theId);

        // add the blog to the model
        theModel.addAttribute("blog", theBlog);

        return "front/blog_show";
    }

}
