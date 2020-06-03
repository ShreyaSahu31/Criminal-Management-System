<%@ page import = "com.java.dao.RecordDao"%>
<jsp:useBean id= "r" class= "com.java.bean.RecordBean"></jsp:useBean>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%!     
    String sel;
    int i ;
%>


<%
     sel = request.getParameter("idselect");
     try{
            r.setId(Integer.parseInt(sel));
     }
     catch(Exception e){
         System.out.println(e);
     }

    if(i > 0)
        response.sendRedirect("Update.jsp");
    else
        response.sendRedirect("Error.jsp");
%>