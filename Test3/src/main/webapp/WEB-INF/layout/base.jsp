<%-- 
    Document   : base
    Created on : Sep 7, 2021, 1:22:54 AM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            <tiles:insertAttribute name="title"></tiles:insertAttribute>
        </title>
        <link rel="stylesheet" href="<c:url value="/css/style.css"/>"/>
        <link type="text/css" rel="stylesheet" href="<tiles:getAsString name="css"/>"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" 
              integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous"/>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
        <!--date-->

    </head>
    <body>
        <!--header-->
        <tiles:insertAttribute name="header"></tiles:insertAttribute>

            <!--content-->
        <tiles:insertAttribute name="content"></tiles:insertAttribute>

            <!--footer-->
        <tiles:insertAttribute name="footer" ></tiles:insertAttribute>
        
        <script src="<c:url value="/js/main.js" />" ></script>
    </body>
</html>
