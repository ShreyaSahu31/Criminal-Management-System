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
                        <li class="breadcrumb-item active">Add New</li>
                    </ol>

                    <!-- Page Content -->
                    <div class="container">
                        <form action="FunctionInsert.jsp" >
                            <div class="form-group row">
                                <label for="name" class="col-sm-2">Name</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control"  placeholder="Name" name="name">
                                </div>

                            </div>
                            <div class="form-group row">
                                <label for="jailcity"  class="col-sm-2">Jail City</label>
                                <div class="col-sm-8">
                                    <select  name="jailcity">
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
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="gender"  class="col-sm-2">Gender</label>
                                <div class="col-sm-8">
                                    <select  name="gender">
                                        <option value="male">Male</option>
                                        <option value="female">Female</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="dob"  class="col-sm-2">Date of Birth</label>
                                <div class="col-sm-8">
                                    <input type="date" class="form-control" name="dob"  >
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="crime"  class="col-sm-2">Crime</label>
                                <div class="col-sm-8">
                                    <select  name="crime">
                                        <option value="Assault">Assault</option>
                                        <option value="Bribery">Bribery</option>
                                        <option value="Corruption">Corruption</option>
                                        <option value="Cybercrime">Cybercrime</option>
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
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="imprisondate"  class="col-sm-2">Imprison Date</label>
                                <div class="col-sm-8">
                                    <input type="date" class="form-control" name="imprisondate"  >
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="releasedate"  class="col-sm-2">Release Date</label>
                                <div class="col-sm-8">
                                    <input type="date" class="form-control" name="releasedate"  >
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="hometown"  class="col-sm-2">Home Town</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control"  placeholder="Home Town" name="hometown">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="familynumber"  class="col-sm-2">Family Number</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control"  placeholder="Family Number" name="familynumber">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="lawyername"  class="col-sm-2">Lawyer Name</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control"  placeholder="Lawyer Name" name="lawyername">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="lawyernumber"  class="col-sm-2">Lawyer Number</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control"  placeholder="Lawyer Number" name="lawyernumber">
                                </div>
                            </div>
                            <button type="submit" class="btn btn-dark" >Submit</button>
                        </form>



                    </div>
                    <!-- /.container-fluid -->

                    <!-- Sticky Footer -->
                    <%@ include file = "footer.jsp"%>


                </div>
                <!-- /.content-wrapper -->

            </div>
        </div>

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
