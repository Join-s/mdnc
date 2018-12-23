package club.hellc.controller;

import club.hellc.pojo.User;
import club.hellc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * 用户层控制类
 */
@Controller
@RequestMapping("user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("findUser")
    public String findUser(Integer id, Model m) {
        User u = userService.findById(1);
        m.addAttribute("userInfo", u.toString());
        return "userInfo";
    }

    @RequestMapping("login")
    public String login(User user, HttpSession session) {

        int i = userService.login(user);


        if (i > 0) {
            User u = userService.findById(i);
            session.setAttribute("user", u);
            return "redirect:/mdnc/index";
        } else {
            return "login";
        }
    }

}
