<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  <meta charset="UTF-8">
  <title>고정 머리 행 테이블</title>
  <style>
    .table-container {
      max-height: 300px;
      overflow-y: scroll;
    }

    #fixed-header {
     background-color : white;
      position: sticky;
      top: 0;
    }
    
    
  </style>
  <script>
    $(document).ready(function() {
      const table = $('#scroll-table');
      const header = $('#fixed-header');
	  
      table.on('scroll', function() {
        header.css('transform', `translateY(${table.scrollTop()}px)`);
      
      });
    });
  </script>
</head>
<body>
  <div class="table-container">
    <table id="scroll-table" class="table table-striped">
    <caption-top>오늘의 환율</caption>
      <thead id="fixed-header">
        <tr class = "table table-danger">
          <th>통화코드</th>
          <th>국가/통화명</th>
          <th>환율</th>
          <th>송금 받으실 때</th>
          <th>송금 보내실 때</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="rate" items="${rate}">
         
          <tr>
            <td>${rate.cur_unit}</td>
            <td>${rate.cur_nm}</td>
            <td>${rate.bkpr}</td>
            <td>${rate.ttb} \</td>
            <td>${rate.tts} \</td>
          </tr>
         
        </c:forEach>
      </tbody>
    </table>
  </div>
</body>
</html>
