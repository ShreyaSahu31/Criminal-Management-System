<!DOCTYPE html>

<html lang="en">

    <head>
        
        <link rel="shortcut icon" href="images/crimeLogo.png">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Criminal Management System</title>

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Page level plugin CSS-->
        <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">

    </head>

    <body id="page-top">
        <%@ page import = "com.java.dao.RecordDao,com.java.bean.RecordBean, java.util.*"%>

        <jsp:useBean id = "p" class = "com.java.bean.RecordBean" />
        <jsp:setProperty name= "p" property = "*"  />
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

        <%@ include file = "navbar.jsp"%>


        <div id="wrapper">

            <!-- Sidebar -->
            <%@ include file = "sidebar.jsp"%>

            <div id="content-wrapper">

                <div class="container-fluid">

                    <!-- Breadcrumbs-->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="index.jsp">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Blank Page</li>
                    </ol>
                        
                    <!-- Page Content -->

                    <div class="container">
                        <form class="form-inline mb-2" action="Delete.jsp">

                            <label class="mr-2" for="jailcity">Jailcity</label>
                            <select class="form-control-sm  mr-5" name="jailcity">
                                <option value="Barwani">Barwani</option>
                                <option value="Gwalior">Gwalior</option>
                                <option value="Hoshangabad">Hoshangabad</option>
                                <option value="Indore">Indore</option>
                                <option value="Narsinghpur">Narsinghpur</option>
                                <option value="Jabalpur">Jabalpur</option>
                                <option value="Reva">Reva</option>
                                <option value="Sagar">Sagar</option>
                                <option value="Satna">Satna</option>
                                <option value="Ujjain">Ujjain</option>
                            </select>

                            <label class="mr-2" for="gender">Gender</label>
                            <select class="form-control-sm mr-5" name="gender">
                                <option value="male">Male</option>
                                <option value="female">Female</option>
                            </select>

                            <label class="mr-2 inline" for="crime">Crime</label>
                            <select class="form-control-sm mr-5" name="crime">
                                <option value="Assault">Assault</option>
                                <option value="Bribery">Bribery</option>
                                <option value="Corruption">Corruption</option>
                                <option value="Corruption">Cybercrime</option>
                                <option value="Domestic Violence">Domestic Violence</option>
                                <option value="Harassment">Harassment</option>
                                <option value="Human Rights Abuse">Human Rights Abuse</option>
                                <option value="Kidnapping">Kidnapping</option>
                                <option value="Manslaughter">Manslaughter</option>
                                <option value="Murder">Murder</option>
                                <option value="Political Crime">Political Crime</option>
                                <option value="Racketeering">Racketeering</option>
                                <option value="Rape">Rape</option>
                                <option value="Robbery">Robbery</option>
                                <option value="Smuggling">Smuggling</option>
                                <option value="Stalking">Stalking</option>
                            </select>
                        <button name="func" type="submit" value="show" class="btn btn-primary mb-2">Show</button>
                           

                        </form>
                    </div>



                    <!-- /.container-fluid -->

                    <%
                               List<RecordBean> disp = new ArrayList<>();

                               disp = RecordDao.SearchRecords(p);
                               
                               request.setAttribute("disp",disp);
                              
                            
                    %>

                    <div class="card mb-3">
                        <div class="card-header">
                            <i class="fas fa-table"></i>
                            All Records</div>

                        <div class="card-body">
                            <div class="table-responsive">
                                <form action="FunctionDelete.jsp">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>&nbsp;</th>
                                                <th>ID</th>
                                                <th>Name</th>
                                                <th>Jail City</th>
                                                <th>Gender</th>
                                                <th>D.O.B</th>
                                                <th>Crime</th>
                                                <th>Imprison Date</th>
                                                <th>Release Date</th>
                                                <th>HomeTown </th>
                                                <th>Family Number </th>
                                                <th>Lawyer Name </th>
                                                <th>Lawyer Number </th>
                                            </tr>
                                        </thead>



                                        <c:forEach items="${disp}" var="p">
                                              
                                            <tr>
                                                <td><input type="checkbox" name="idselect" value=${p.getId()} /></td>
                                                <td>${p.getId()}</td>
                                                <td>${p.getName()}</td>
                                                <td>${p.getJailcity()}</td>
                                                <td>${p.getGender()}</td>
                                                <td>${p.getDob()}</td>
                                                <td>${p.getCrime()}</td>
                                                <td>${p.getImprisondate()}</td>
                                                <td>${p.getReleasedate()}</td>
                                                <td>${p.getHometown()}</td>
                                                <td>${p.getFamilynumber()}</td>
                                                <td>${p.getLawyername()}</td>
                                                <td>${p.getLawyernumber()}</td>
                                            </tr>

                                        </c:forEach> 

                                    </table>
                                    <input type="submit" name="Submit" value="submit" class="btn btn-dark mb-2">
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Sticky Footer -->
            <%@ include file = "footer.jsp"%>
        </div>

        <!-- /.content-wrapper -->


        <!-- /#wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                        <a class="btn btn-primary" href="login.jsp">Logout</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin.min.js"></script>

    </body>

</html>
