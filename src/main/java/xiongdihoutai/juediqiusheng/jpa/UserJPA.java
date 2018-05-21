package xiongdihoutai.juediqiusheng.jpa;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import xiongdihoutai.juediqiusheng.entity.User;

import java.util.Date;
import java.util.List;

@Repository
public interface UserJPA extends JpaRepository<User, String>{
        @Query(value = "select * from login_user where DATE(createdate) =:date ",nativeQuery = true)
        List findBycreatedate(@Param("date") Date date);
}
