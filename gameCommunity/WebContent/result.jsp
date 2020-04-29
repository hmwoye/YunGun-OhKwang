<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
// request 객체로부터 파라미터를 가져옴.
String userName = request.getParameter("getName");
String userTitle = request.getParameter("getTitle");
String userContent = request.getParameter("getContent");
System.out.println(userName);
System.out.println(userTitle);
%>