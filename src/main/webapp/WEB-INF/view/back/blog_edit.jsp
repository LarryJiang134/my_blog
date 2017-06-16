<%--
  Created by IntelliJ IDEA.
  User: hangyanjiang
  Date: 2017/6/16
  Time: 下午9:59
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
<head>
    <title>Edit Blog</title>

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
    <h3>Edit Blog</h3>

    <form:form action="blog_save" modelAttribute="blog" method="post">

    <!-- need to associate this data with blog id -->
        <form:hidden path="id" />

    <table>
        <tbody>
        <tr>
            <td><label>TITLE:</label></td>
            <td><form:input path="title" /></td>
        </tr>


        <tr>
            <td><label>AUTHOR:</label></td>
            <td><form:input path="author" /></td>
        </tr>


        <tr>
            <td><label>CATEGORY:</label></td>
            <td><form:input path="category" /></td>
        </tr>

        <tr>
            <td><label>DESCRIPTION:</label></td>
            <td><form:input path="description" /></td>
        </tr>

        <tr>
            <td><label>CONTENT:</label></td>
            <td><form:input path="content" /></td>
        </tr>

        <tr>
            <td><label>CREATED_TIME:</label></td>
            <td><form:input path="createTime" /></td>
        </tr>

        <tr>
            <td><label>VIEWCOUNT:</label></td>
            <td><form:input path="viewCount" /></td>
        </tr>

        <tr>
            <td><label></label></td>
            <td><input type="submit" value="Save" class="save" /></td>
        </tr>
        </tbody>
    </table>

    </form:form>

    <div style="clear; both;"></div>
    <p>
        <a href="${pageContext.request.contextPath}/admin/home">Back to List</a>
    </p>
</div>


</body>

</html>