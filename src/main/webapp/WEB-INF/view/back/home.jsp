<%--
  Created by IntelliJ IDEA.
  User: hangyanjiang
  Date: 2017/6/16
  Time: 下午8:13
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
    <title>List Customers</title>

    <!-- reference our style sheet -->
    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css" />
</head>

<body>

<div id="wrapper">
    <div id="header">
        <h2>Blog Management</h2>
    </div>
</div>

<div id="container">

    <div id="content">

        <!-- put new button: new blog -->
        <input type="button" value="NEW BLOG"
               onclick="window.location.href='showFormForAdd'; return false;"
               class="add-button"
        />

        <!-- add our html table here -->
        <table>
            <tr>
                <th>ID</th>
                <th>TITLE</th>
                <th>CATEGORY</th>
                <th>CREATE_TIME</th>
            </tr>

            <!-- loop over and print out customers -->
            <c:forEach var="tempCustomer" items="${customers}">

                <!-- construct an "update" link with customer od -->
                <c:url var="updateLink" value="/customer/showFormForUpdate">
                    <c:param name="customerId" value="${tempCustomer.id}" />
                </c:url>

                <!-- construct an "delete" link with customer od -->
                <c:url var="deleteLink" value="/customer/delete">
                    <c:param name="customerId" value="${tempCustomer.id}" />
                </c:url>

                <tr>
                    <td> ${tempCustomer.firstName} </td>
                    <td> ${tempCustomer.lastName} </td>
                    <td> ${tempCustomer.email} </td>

                    <td>
                        <!-- display the update link -->
                        <a href="${updateLink}">Update</a>
                        |
                        <a href="${deleteLink}"
                           onclick="if (!(confirm('Are your sure you want to delete this customer?'))) return false">Delete</a>
                    </td>
                </tr>

            </c:forEach>
        </table>

    </div>

</div>

</body>

</html>