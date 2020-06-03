<%@ page import = "com.java.dao.RecordDao"%>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>

<jsp:useBean id= "p" class= "com.java.bean.RecordBean"></jsp:useBean>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%   
    
    
    
     String req;
     String name;
     String jailcity;
     String gender;
     String dob;
     String crime;
     String imprisondate;
     String releasedate;
     String hometown;
     String familynumber;
     String lawyername;
     String lawyernumber;
      
     req = request.getParameter("func");
     out.print(req);
     name = request.getParameter("name");
     jailcity = request.getParameter("jailcity");
     gender = request.getParameter("gender");
     dob = request.getParameter("dob");
     crime = request.getParameter("crime");
     imprisondate = request.getParameter("imprisondate");
     releasedate = request.getParameter("releasedate");
     hometown = request.getParameter("hometown");
     familynumber = request.getParameter("familynumber");
     lawyername = request.getParameter("lawyername");
     lawyernumber = request.getParameter("lawyernumber");
     
  SimpleDateFormat formater = new SimpleDateFormat("yyyy-MM-dd");
  
  Date rdob = formater.parse(dob);
  Date rimprisondate = formater.parse(imprisondate);
  Date rreleasedate = formater.parse(releasedate);
  
  
  p.setName(name);
  p.setJailcity(jailcity);
  p.setGender(gender);
  p.setDob(rdob);
  p.setCrime(crime);
  p.setImprisondate(rimprisondate);
  p.setReleasedate(rreleasedate);
  p.setHometown(hometown);
  p.setFamilynumber(familynumber);
  p.setLawyername(lawyername);
  p.setLawyernumber(lawyernumber);
 

 int i = RecordDao.insert(p);

    if(i > 0)
        response.sendRedirect("AddNew.jsp");
    else
        response.sendRedirect("Error.jsp");
%>     