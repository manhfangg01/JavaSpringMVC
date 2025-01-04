package vn.hoidanit.laptopshop.domain;

// javax is the old version of Spring framework, now it is replaced by org.springframework
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity // this is a JPA entity, if Java class has this annotation, it will be mapped to
        // a table in the database
// @Table(name = "nguoi_dung") // this annotation is used to specify the table
// name that the entity is mapped
// // to
// // Chỉ nên sử dụng khi db của bạn đã không thể sửa được và bạn lại muốn sao
// chép db hiện tại thành 1 db mới với 1 cái tên khác
public class User {

    @Id // this is the primary key of the table, Every entity must have a primary key
        // (ID)
    @GeneratedValue(strategy = GenerationType.IDENTITY) // this annotation is used to specify how the primary key should
                                                        // be
                                                        // generated
    // In default, Stragegy is AUTO which means the primary key will be generated
    // with the available options in the database
    // IDENTITY is used to generate increase of the primary key
    // SEQUENCE is used to generate the primary key with a sequence (Oracle,
    // PostgreSQL)
    private long id;

    private String email;
    private String password;
    private String fullName; // Code: camelCase -> DB: snake_case
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

    public long getID() {
        return id;
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

    public void setID(long id) {
        this.id = id;
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
