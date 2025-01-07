package vn.hoidanit.laptopshop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import vn.hoidanit.laptopshop.domain.User;

// crud: create, read, update, delete
// JpaRepository better than CrudRepository because the return value of its function is more flexible for developers
@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User save(User hoidanit);

    List<User> findByEmail(String email);

    List<User> findByFullNameAndAddress(String fullName, String address);

    User findById(long id);
}

// In theory, there is no difference between findAllBy and findOneBy and findBy
// in the function name
// But in practice, there is a difference between them and that's their return
// value
// + findAllBy: return a list of objects Ex: List<User>
// + findOneBy: return a single object Ex: User if you use this function it's
// must be findFirstUserBy or findTopRankedUserBy to make sure that you get one
// and only one object