package larry.blog.controller.front;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by hangyanjiang on 2017/6/15.
 */

@Controller
@RequestMapping("/home")
public class HomeController {

    public String home() {
        return "";
    }

}
