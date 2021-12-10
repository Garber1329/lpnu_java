<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Реєстрація</title>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css"
            integrity="sha256-L/W5Wfqfa0sdBNIKN9cG6QA5F2qx4qICmU2VgLruv9Y="
            crossorigin="anonymous"
    />



</head>

<body>
<div class="container">
    <div class="card card-container">
        <img class="profile-img-card" src="http://ukrainepravo.com/upload/iblock/4d2/4d2ce852cbd873b94fb5df5453ef5502.jpg" alt="" />
        <form:form modelAttribute="userModel" class="form-signin"  method="POST" action="/registration">
    <h2>Реєстрація користувача </h2>
    <div>
            <input class="form-control" type="text" path="lastName" name="lastName" placeholder="LastName"/>

            <input class="form-control" type="text" path="firstName" name="firstName" placeholder="FirstName"/>
        <form:errors path="password"></form:errors>
        ${userError}
        <input  class="form-control"  name="userName" type="text" placeholder="Username"
                autofocus="true"/>
        <input class="form-control" type="email" name="email" placeholder="email"
                    autofocus="true">
        <input class="form-control" name="password" type="password" placeholder="Password"/>

            <input class="form-control" type="password" name="passwordConfirm"
                        placeholder="Confirm your password"/>
            <form:errors path="password"></form:errors>
            ${passwordError}

            <input class="form-control" type="text" name="phone" placeholder="Phone" />

        <form:label path = "role" class="col-md-4 col-form-label text-md-right">Role</form:label>
        <div class="col-md-6">
            <div class="input-group">
                <form:radiobutton path = "role" checked = "true" value = "USER" label = "User"/>
            </div>
            <div class="input-group">
                <form:radiobutton path = "role" value = "ADMIN" label = "Admin" />
            </div>
        </div>

        <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Реєстрація</button>

        <h4><a class="forgot-password" href="/login">Login</a></h4>
    </div>
    </form:form>
</div>
</div>

</body>
