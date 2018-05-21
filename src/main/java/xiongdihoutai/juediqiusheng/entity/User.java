package xiongdihoutai.juediqiusheng.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "login_user")
public class User {
    @Id
    @Column(name = "id")
    private String id;

    @Column(name = "username")
    private String username;

    @Column(name = "password")
    private String password;

    @Column(name = "createdate")
    @Temporal(TemporalType.DATE)
    private Date createdate;
}
