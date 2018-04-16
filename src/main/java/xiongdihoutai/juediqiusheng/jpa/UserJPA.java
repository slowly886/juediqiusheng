package xiongdihoutai.juediqiusheng.jpa;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import xiongdihoutai.juediqiusheng.entity.User;

import java.util.Date;
import java.util.List;

@Repository
public interface UserJPA extends JpaRepository<User, String>{
        List findBycreatedate(Date createdate);
}
