<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit User</title>
</head>
<body>
<h2>Edit User</h2>
<form action="/users/update" method="post">
    <input type="hidden" name="id" value="${user.id}"/>
    Name: <input type="text" name="name" value="${user.name}" required/>
    Email: <input type="email" name="email" value="${user.email}" required/>
    <input type="submit" value="Update User"/>
</form>
<a href="/users">Cancel</a>
</body>
</html>