package larry.blog.entity;

import javax.validation.constraints.*;
import larry.blog.service.interf.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by hangyanjiang on 2017/6/15.
 */

@Entity
@Table(name = "blogs")
public class Blog {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "category")
    private Integer category;

    @Column(name = "title")
    //@NotNull(message = "is required")
    //@Size(min=1, message = "is required")
    private String title;

    @Column(name = "content")
    //@NotNull(message = "is required")
    //@Size(min=1, message = "is required")
    private String content;

    @Column(name = "description")
    private String description;

    @Column(name = "author")
    private String author;

    @Column(name = "createTime")
    private Date createTime;

    @Column(name = "updateTime")
    private Date updateTime;

    @Column(name = "viewCount")
    private Integer viewCount;

    public Blog() {
        this.createTime = new Date();
        this.updateTime = new Date();
    }

    /*
    public Blog(int category, String title, String content, String description, String author, Date createTime, Date updateTime, Integer viewCount) {
        this.category = category;
        this.title = title;
        this.content = content;
        this.description = description;
        this.author = author;
        this.createTime = createTime;
        this.updateTime = updateTime;
        this.viewCount = viewCount;
    }
    */

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCategory() {
        return category;
    }

    public void setCategory(Integer category) {
        this.category = category;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Integer getViewCount() {
        return viewCount;
    }

    public void setViewCount(Integer viewCount) {
        this.viewCount = viewCount;
    }

    @Override
    public String toString() {
        return "Blog{" +
                "id=" + id +
                ", category=" + category +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", description='" + description + '\'' +
                ", author='" + author + '\'' +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", viewCount=" + viewCount +
                '}';
    }
}
