package larry.blog.entity.typeHolder;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * Created by hangyanjiang on 2017/6/15.
 */
public class Categories {

    @Id
    @GeneratedValue
    @Column(name = "id")
    private Integer id;

    @Column(name = "category_name")
    private String categoryName;

}
