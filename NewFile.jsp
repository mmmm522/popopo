<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<title> Boxes </title>
<meta charset='utf-8'>
<style>
table {
  border-spacing: 6px;
  border: 1px rgb(#CCC);
  margin-top: .5in;
  margin-left: 1in;
}
td {
  width: 40px; height: 40px; 
  border: 1px solid black;
  cursor: pointer;
}
</style>
  
<script>
   function colorize(el) {
     var r = ('0'+(Math.random()*255|0).toString(16)).slice(-2),
        g = ('0'+(Math.random()*255|0).toString(16)).slice(-2),
        b = ('0'+(Math.random()*255|0).toString(16)).slice(-2);
       el.style.backgroundColor = '#' +r+g+b;
  }

  </script>
  </head>
  <body>
  <table>
  <tbody>
  <script type="text/javascript">
    var row = 16;
    var cols = 16;

  for(var r=0;r<row;r++){
    document.write("</tr>");

    for(var c=0;c<cols;c++){
      document.write("<td onMouseEnter='colorize(this);'></td>"); 
    }
    document.write("</tr>");
  }
  </script>
  </tbody>
  </table>
  </body>
  </html>