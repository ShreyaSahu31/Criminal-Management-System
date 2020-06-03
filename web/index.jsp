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
                            <a href="#">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Overview</li>
                    </ol>

                    <!-- Icon Cards-->
                    <div class="row">
                        
                        <div class="col-xl-4 col-sm-6 mb-3">
                            <div class="card text-white bg-info o-hidden h-100">
                                <div class="card-header">
                                    <div class="card-body-icon">
                                        <i class="fas fa-fw fa-chart-area" ></i>
                                    </div>
                                     <div class="mr-5">Show All</div>
                                </div>
                                <div class="card-body">
                                    <div class="mr-5">13 New Tickets!</div>
                                </div>
                            </div>
                        </div>
                        
                         <div class="col-xl-4 col-sm-6 mb-3">
                            <div class="card text-white bg-info o-hidden h-100">
                                <div class="card-header">
                                    <div class="card-body-icon">
                                        <i class="fas fa-fw fa-search "></i>
                                    </div>
                                     <div class="mr-5">Search</div>
                                </div>
                                <div class="card-body">
                                    <div class="mr-5"> this option is given in the Criminal Management System to reduce the time taken to find the criminal's record and details when needed </div>
                                </div>
                            </div>
                        </div>
                        
                         <div class="col-xl-4 col-sm-6 mb-3">
                            <div class="card text-white bg-info o-hidden h-100">
                                <div class="card-header bg-dark ">
                                    <div class="card-body-icon">
                                        <i class="fas fa-fw fa-life-ring"></i>
                                    </div>
                                     <div class="mr-5">Add New</div>
                                </div>
                                <div class="card-body">
                                    <div class="mr-5">As soon as the  court declares that the victim is found guilty and tells his or her punishment and in which prison the victim must be kept,
                                    all the details of criminal like name, address, age, criminal number and crime all can be added in the Criminal Management System.</div>
                                </div>
                            </div>
                        </div>
                        
                         <div class="col-xl-4 col-sm-6 mb-3">
                            <div class="card text-white bg-info o-hidden h-100">
                                <div class="card-header">
                                    <div class="card-body-icon">
                                        <i class="fas fa-fw fa-life-ring"></i>
                                    </div>
                                     <div class="mr-5">Edit</div>
                                </div>
                                <div class="card-body">
                                    <div class="mr-5">13 New Tickets!</div>
                                </div>
                            </div>
                        </div>
                        
                         <div class="col-xl-4 col-sm-6 mb-3">
                            <div class="card text-white bg-info o-hidden h-100">
                                <div class="card-header">
                                    <div class="card-body-icon">
                                        <i class="fas fa-fw fa-life-ring"></i>
                                    </div>
                                     <div class="mr-5">Delete</div>
                                </div>
                                <div class="card-body">
                                    <div class="mr-5">13 New Tickets!</div>
                                </div>
                            </div>
                        </div>
                        
                    </div>

                  
                    
                    <!-- /.container-fluid -->

                    <!-- Sticky Footer -->
                    <%@ include file = "footer.jsp"%>


                </div>
                <!-- /.content-wrapper -->

            </div>
            <!-- /#wrapper -->
        </div>
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

        <!-- Page level plugin JavaScript-->
        <script src="vendor/chart.js/Chart.min.js"></script>
        <script src="vendor/datatables/jquery.dataTables.js"></script>
        <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin.min.js"></script>

        <!-- Demo scripts for this page-->
        <script src="js/demo/datatables-demo.js"></script>
        <script src="js/demo/chart-area-demo.js"></script>

    </body>

</html>
