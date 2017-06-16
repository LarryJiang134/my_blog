package larry.blog.entity.typeHolder;

import javax.persistence.*;

/**
 * Created by hangyanjiang on 2017/6/15.
 */

//@Entity
@Table(name = "tags")
public class Tags {

    @Id
    @GeneratedValue
    @Column(name = "id")
    private int id;

    @Column(name = "tag_name")
    private String tagName;

    public Tags() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTagName() {
        return tagName;
    }

    public void setTagName(String tagName) {
        this.tagName = tagName;
    }
}
