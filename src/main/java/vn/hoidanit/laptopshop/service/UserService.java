package vn.hoidanit.laptopshop.service;

import java.util.List;

import org.hibernate.sql.results.spi.ListResultsConsumer;
import org.springframework.stereotype.Service;

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public String handleHello() {
        return "Fangg hello everybody";
    }

    public User handleSaveUser(User user) {
        User savedUser = this.userRepository.save(user);
        System.out.println("UserService response that: " + savedUser);
        return savedUser;
    }

    public void getAllUser2() {
        this.userRepository.findAll().forEach(user -> System.out.println(user));
    }

    public List<User> getAllUser() {
        return this.userRepository.findAll();
    }

    public List<User> getAllUserByEmail(String email) {
        return this.userRepository.findByEmail(email);
    }

    public List<User> getAllUserByFullNameAndAddress(String fullName, String address) {
        return this.userRepository.findByFullNameAndAddress(fullName, address);
    }

}