<%@ page import="com.codegym.Customers" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>$Title$</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<%
    List<Customers> customers = new ArrayList<>();
    customers.add(new Customers("Nguyễn Văn A", "12-3-2000", "Hà Nội", "img/1.jpg"));
    customers.add(new Customers("Nguyễn Văn B", "13-4-2001", "Huế", "img/2.jpg"));
    customers.add(new Customers("Nguyễn Văn C", "15-6-2002", "TP. Hồ Chí Minh", "img/3.jpg"));
    customers.add(new Customers("Nguyễn Văn D", "17-8-2003", "Cà Mau", "img/4.jpg"));
    pageContext.setAttribute("customers", customers);
%>
<table class="table">
    <thead>
    <tr>
        <th scope="col">Tên khách hàng</th>
        <th scope="col">Ngày sinh</th>
        <th scope="col">Địa chỉ</th>
        <th scope="col">Ảnh</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="customer" items="${customers}">
        <tr>
            <td>${customer.name}</td>
            <td>${customer.dateOfBirth}</td>
            <td>${customer.address}</td>
            <td><img height="120" src=${customer.image} alt="..."></td>
        </tr>
    </c:forEach>
    </tbody>
</table>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
