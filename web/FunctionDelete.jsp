<%@ page import = "com.java.dao.RecordDao"%>
<jsp:useBean id= "r" class= "com.java.bean.RecordBean"></jsp:useBean>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%!     
    String[] sel;
    int i, count = 0 ;
%>


<%
    try {
   
        sel = request.getParameterValues("idselect");
 
        for(int i = 0; i<sel.length; i++){
            r.setId(Integer.parseInt(sel[i]));
            count += RecordDao.delete(r);
        }
    }
    catch(Exception e) {
            System.out.println(e);
    }
    if(count > 0) {
        System.out.println(count);
        response.sendRedirect("Delete.jsp");
    }
    else
        response.sendRedirect("Error.jsp");
%>