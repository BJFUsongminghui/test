<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>验证码</title>
  </head>
  <body>
  <img id="codeImg" src="/test0823/checkImg" onclick="refreshCode()">
 
  ${student.getStu_name()}<br>
  </body>
<script type="text/javascript">
  function refreshCode() {
    var codeImg = document.getElementById("codeImg");
    var d = new Date();
    codeImg.src = "/test0823/checkImg?s="+d;
  }
</script>
</html>