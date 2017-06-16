package larry.blog.controller.back;

import larry.blog.entity.Blog;
import larry.blog.service.interf.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by hangyanjiang on 2017/6/15.
 */

@Controller
@RequestMapping("/admin")
public class HomeController {

    // need to inject our customer service
    @Autowired
    private BlogService blogService;

    @RequestMapping("/")
    public String home(Model theModel) {

        // get customers from the service
        List<Blog> theBlogs = blogService.getBlogs();

        // add the customers to the model
        theModel.addAttribute("blog_list", theBlogs);

        return "/back/home";
    }

}
