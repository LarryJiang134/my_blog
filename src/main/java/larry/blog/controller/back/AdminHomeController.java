package larry.blog.controller.back;

import larry.blog.entity.Blog;
import larry.blog.service.interf.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by hangyanjiang on 2017/6/15.
 */

@Controller
@RequestMapping("/admin")
public class AdminHomeController {

    // need to inject our blog service
    @Autowired
    private BlogService blogService;

    @GetMapping("/home")
    public String home(Model theModel) {

        // get blog from the service
        List<Blog> theBlogs = blogService.getBlogs();

        // add the blog to the model
        theModel.addAttribute("blog_list", theBlogs);

        return "back/home";
    }

    @GetMapping("/blog_add")
    public String blogAdd(Model theModel) {

        // create model attribute to bind form data
        Blog theBlog = new Blog();

        theModel.addAttribute("blog", theBlog);

        return "back/blog_edit";
    }

    @GetMapping("/blog_edit")
    public String blogEdit(@RequestParam("blogId") int theId,
                           Model theModel) {

        // get the blog from the service
        Blog theBlog = blogService.getBlog(theId);

        // set blog as a model attribute to pre-populate the form
        theModel.addAttribute("blog", theBlog);

        return "back/blog_edit";
    }

    @PostMapping("/blog_save")
    public String blogSave(@ModelAttribute("blog") Blog theBlog) {

        // save the blog using the service
        blogService.saveBlog(theBlog);

        // test
        System.out.println(">> save called");

        return "redirect:/home";
    }


}
