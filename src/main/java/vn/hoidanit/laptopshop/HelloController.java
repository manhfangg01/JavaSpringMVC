package vn.hoidanit.laptopshop;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

	@GetMapping("/")
	public String index() {
		return "Hello the unKnown me ??  ád";
	}

	@GetMapping("/user")
	public String userPage() {
		return "User can access this page";
	}

	@GetMapping("/admin")
	public String admin() {
		return "Only user can access this page";
	}

}
