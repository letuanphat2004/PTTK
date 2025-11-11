<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Menu Báo cáo</title>
  <style>
    body { font-family: Arial, sans-serif; padding: 20px; background-color: #f9f9f9; }
    .container { width: 90%; max-width: 1200px; margin: 20px auto; padding: 20px; }
    .header { display: flex; justify-content: space-between; align-items: center; }
    h1 { color: #333; }
    .menu { margin-top: 30px; }
    .menu a {
      display: inline-block; padding: 15px 25px; background-color: #007bff;
      color: white; text-decoration: none; border-radius: 5px; margin: 5px;
      font-size: 1.1em; transition: background-color 0.3s;
    }
    .menu a:hover { background-color: #0056b3; }
    .back-link { margin-top: 30px; display: inline-block; }
  </style>
</head>
<body>

<div class="container">
  <div class="header">
    <h1>Trang Báo cáo & Thống kê</h1>
    <%-- Hiển thị tên người dùng nếu muốn --%>
    <span>Chào, ${sessionScope.account.fullname}</span>
  </div>

  <h2>Vui lòng chọn loại báo cáo bạn muốn xem:</h2>

  <div class="menu">

    <%-- 1. Link này trỏ đến DocumentStatisticsServlet --%>
    <a href="${pageContext.request.contextPath}/docStats">
      Thống kê tài liệu theo lượt mượn
    </a>


  </div>

  <a href="home.jsp" class="back-link">Quay lại trang chủ</a>
</div>

</body>
</html>