package larry.blog.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by hangyanjiang on 2017/6/15.
 */

@Entity
@Table(name = "UserIntro")
public class UserIntro {

    @Column(name = "user_name")
    private String username;

    @Column(name = "avatar")
    private String avatar;

    @Column(name = "nickname")
    private String nickname;

    @Column(name = "phone")
    private String phone;

    @Column(name = "email")
    private String email;

    @Column(name = "signature")
    private String signature;

    @Column(name = "address")
    private String address;

    @Column(name = "github")
    private String github;

    @Column(name = "wechat")
    private String wechart;

}
