package larry.blog.entity.typeHolder;

import javax.persistence.*;

/**
 * Created by hangyanjiang on 2017/6/15.
 */

//@Entity
@Table(name = "categories")
public class Categories {

    @Id
    @GeneratedValue
    @Column(name = "id")
    private Integer id;

    @Column(name = "category_name")
    private String categoryName;

    public Categories() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }
}
