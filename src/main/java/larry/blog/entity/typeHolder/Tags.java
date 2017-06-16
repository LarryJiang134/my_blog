package larry.blog.entity.typeHolder;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * Created by hangyanjiang on 2017/6/15.
 */
public class Tags {

    @Id
    @GeneratedValue
    @Column(name = "id")
    private int id;

    @Column(name = "tag_name")
    private String tagName;

}
