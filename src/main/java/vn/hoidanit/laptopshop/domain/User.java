package vn.hoidanit.laptopshop.domain;

public class User {
    private String email;
    private String password;
    private String fullName;
    private String address;
    private String phoneNumber;

    public User() {
    }

    public User(String email, String password, String fullName, String address, String phoneNumber) {
        this.email = email;
        this.password = password;
        this.fullName = fullName;
        this.address = address;
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getFullName() {
        return fullName;
    }

    public String getAddress() {
        return address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    @Override
    public String toString() {
        return "User [email=" + email + ", password=" + password + ", fullName=" + fullName + ", address=" + address
                + ", phoneNumber=" + phoneNumber + "]";
    }
}
