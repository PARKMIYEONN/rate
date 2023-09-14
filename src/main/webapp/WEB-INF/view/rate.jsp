<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table class="table table-striped table-hover">
        <thead>
          <tr>
            
            <th>통화코드</th>
            <th>국가/통화명</th>
            <th>환율</th>
            <th>송금 받으실 때</th>
            <th>송금 보내실 때</th>
            <th></th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="post" items="${rate}">
            <tr>
              
              <td>${post.cur_unit}</td>
              <td>${post.cur_nm}</td>
              <td>${post.bkpr}</td>
              <td>${post.ttb}</td>
              <td>${post.tts}</td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
</body>
</html>