<%--
  Created by IntelliJ IDEA.
  User: hangyanjiang
  Date: 2017/6/18
  Time: 上午10:15
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: hangyanjiang
  Date: 2017/6/17
  Time: 下午9:11
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
<head>
    <title>Add Blog</title>

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css">

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
</head>

<body>


<div id="wrapper">
    <div id="header">
        <h2>Larry's Blog</h2>
    </div>
</div>

<div id="container">
    <h1>${blog.title}</h1>

    <br>

    <h4>author: ${blog.author}</h4>

    <br>

    <h6>created: ${blog.createTime}|updated: ${blog.updateTime}</h6>

    <br><br>

    <h4>description: ${blog.description}</h4>

    <br><br>

    <h3>${blog.content}</h3>

    <br><br>

    <h5>view count: ${blog.viewCount}</h5>

    <div style="clear; both;"></div>
    <p>
        <a href="${pageContext.request.contextPath}/admin/home">Back to List</a>
    </p>
</div>


</body>

</html>

