<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User List</title>
</head>
<body>
<h2>Users</h2>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>
                <form action="${pageContext.request.contextPath}/users/delete" method="post" style="display:inline;">
                    <input type="hidden" name="id" value="${user.id}"/>
                    <input type="submit" value="Delete"/>
                </form>
                <a href="/users/edit?id=${user.id}">Edit</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<h3>Add User</h3>
<form action="/users/add" method="post">
    Name: <input type="text" name="name" required/>
    Email: <input type="email" name="email" required/>
    <input type="submit" value="Add User"/>
</form>
</body>
</html>