package xiongdihoutai.juediqiusheng.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import xiongdihoutai.juediqiusheng.entity.User;
import xiongdihoutai.juediqiusheng.jpa.UserJPA;
import xiongdihoutai.juediqiusheng.util.DateUtil;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
public class HelloController {

    @Autowired
    private UserJPA userJPA;

    /**
     * 前台页面
     *
     * @return
     */
    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    /**
     * 后台登录
     *
     * @return
     */
    @RequestMapping("/login")
    public String login(String username, String password, HttpServletRequest request) {
        String realPath = request.getContextPath();
        if(username.equals("admin")&&password.equals("admin")){
            return "redirect:/findalluser";
        }
        return "admin";
    }

    @RequestMapping("/admin")
    public String admin() {
        return "admin";
    }

    @RequestMapping("/user")
    public String user() {
        List<User> all = userJPA.findAll();
        System.out.println(all.size());
        return "admin";
    }

    /**
     * 存储登录用户信息
     * @param user
     * @return
     */
    @RequestMapping("/saveuser")
    public String saveUser(User user) {
        user.setId(UUID.randomUUID().toString());
        user.setCreatedate(new Date());
        userJPA.save(user);
        return "redirect:/index";
    }

    @RequestMapping("/findalluser")
    public String findAllUser(Model model) {
        List<User> all = userJPA.findAll();
//        User user = all.get(0);
        model.addAttribute("list",all);
        return "userManager";
    }

    @RequestMapping("/findalluserBydate")
    public String findAllUserBydate(Model model,String createdate) {
        Date date = DateUtil.dateFormate(createdate, "yyyy-MM-dd");
        List<User> all = userJPA.findBycreatedate(date);
        model.addAttribute("list",all);
        return "userManager";
    }
}
