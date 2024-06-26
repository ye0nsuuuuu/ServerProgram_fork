<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--jstl 도구 사용하기 위해서, 메타 설정 코드 불러오기, 복붙해서 사용함. --%>
<!DOCTYPE html>
<html>
<head>
  <title>JSP-Model2(MVC)-MenuList</title>
</head>
<body>
  <button><a href="/menu/input">메뉴작성</a></button>
<ul>
  <c:forEach var="dto" items="${list}">
    <li>
    <span>
    <a href="/menu/read?menuNo=${dto.menuNo}">${dto.menuNo}</a>
    </span>
    <span>
    ${dto.menuTitle}
    </span>
    <span>
    ${dto.menuRegDate}
    </span>
    </li>
  </c:forEach>
</ul>
</body>
</html>
