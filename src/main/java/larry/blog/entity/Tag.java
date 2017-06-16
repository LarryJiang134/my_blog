package larry.blog.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by hangyanjiang on 2017/6/15.
 */

//@Entity
@Table(name = "tag")
public class Tag {

    @Column(name = "tag_id")
    private int tagId;

    @Column(name = "blog_id")
    private int blogId;

    public Tag() {
    }

    public int getTagId() {
        return tagId;
    }

    public void setTagId(int tagId) {
        this.tagId = tagId;
    }

    public int getBlogId() {
        return blogId;
    }

    public void setBlogId(int blogId) {
        this.blogId = blogId;
    }
}
