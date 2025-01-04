package vn.hoidanit.laptopshop.controller;
// this file is the primary part of Model MVC spring: main function is charge

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.UserRepository;

import java.util.Scanner;

// for redirecting your website

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import vn.hoidanit.laptopshop.service.UserService;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class userController { // Model MVC code
    private final UserService userService;

    public userController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/") // Sufiex of your ur Ex: localhost:8080/gayy to access resource in
                         // localhost:8080
    public String getHomePage(Model model) {
        String test = this.userService.handleHello(); // static data is unusable in this case
        model.addAttribute("eric", test);
        model.addAttribute("hoidanit", "from controller with model");

        return "hello"; // file trả về sẽ là thứ được hiện lên khi hàm này chạy -> cần dùng String
    }

    // @RequestMapping("/admin/user") // Để mặc định thì thì là method GET
    // public String adminCheck(Model model) {
    // model.addAttribute("newUser", new User());
    // return "admin/user/create";
    // }
    @RequestMapping("/admin/user/create") // Để mặc định thì thì là method GET
    public String adminCheck(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    @RequestMapping("/admin/user") // Để mặc định thì thì là method GET
    public String showTableUser(Model model) {
        return "admin/user/create2";
    }

    @RequestMapping(value = "/admin/user/create", method = RequestMethod.POST) // Cú pháp để tạo method POST
    public String createUserPage(Model model, @ModelAttribute("newUser") User hoidanit) {
        System.out.println("user created" + hoidanit);
        this.userService.handleSaveUser(hoidanit);
        System.out.println("All the User in your management system: \n");
        this.userService.getAllUser().forEach(user -> System.err.println(user));
        Scanner sc = new Scanner(System.in);
        String findingEmail = sc.nextLine();
        System.out.println("All the User in your management system has email: " + findingEmail + ": \n");
        this.userService.getAllUserByEmail(findingEmail + "@gmail.com").forEach(user -> System.out.println(user));
        System.out.println("\nEnter the fullname: ");
        String fullName = sc.nextLine();
        System.out.println("\nEnter the address: ");
        String address = sc.nextLine();
        System.out.println("\nAll the User in your management system has fullName: " + fullName + " and address: "
                + address + ": \n");
        this.userService.getAllUserByFullNameAndAddress(fullName, address).forEach(user -> System.out.println(user));

        sc.close();
        return "hello";
    }

}
