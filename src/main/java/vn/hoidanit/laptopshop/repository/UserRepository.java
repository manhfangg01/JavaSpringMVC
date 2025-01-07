package vn.hoidanit.laptopshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.hoidanit.laptopshop.domain.User;
import java.util.List;

//crud: create, read, update, delete
@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User save(User eric);

    List<User> findOneByEmail(String email);

    List<User> findAll();

    User findById(long id); // null
}
// In theory, there is no difference between findAllBy and findOneBy and findBy
// in the function name
// But in practice, there is a difference between them and that's their return
// value
// + findAllBy: return a list of objects Ex: List<User>
// + findOneBy: return a single object Ex: User if you use this function it's
// must be findFirstUserBy or findTopRankedUserBy to make sure that you get one
// and only one object