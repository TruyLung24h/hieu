<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Tables</title>

   <!-- Bootstrap core CSS-->
    <link href="../static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="../static/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="../static/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../static/css/sb-admin.css" rel="stylesheet">

  </head>

  <body id="page-top">

    

    <div id="wrapper">

      <!-- Sidebar -->
      <ul class="sidebar navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="/admin">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Quản lý tin tức</span>
          </a>
          <a class="nav-link" href="/employee/them">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Thêm Tin tức</span>
          </a>
          <a class="nav-link" href="/">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Đăng Xuất</span>
          </a>
        </li>
        
       
      </ul>

      <div id="content-wrapper">

        <div class="container-fluid">

          <!-- Breadcrumbs-->
         

          <!-- DataTables Example -->
          <div class="card mb-3">
            <div class="card-header">             
              <i class="fas fa-table"></i> Bảng tin tức</div>
            <div class="card-body">    
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
               
                  <thead>
                  
                    <tr>
                      <th>id</th>
                      <th>Tiêu Đề</th>
                      <th>Danh Mục</th>
                      <th>Tóm Tắt Nội Dung</th>
                      <th>Nội Dung</th>
                      <th>Hình Ảnh</th>
                      <th>Thời Gian</th>  
                      <th>Người Đăng</th>                 
                      <th>Xóa</th>
                        <th>Chỉnh sửa</th>
                      
                    </tr>
                  </thead>
                
                  <tbody>
                    
                    <c:forEach var="tintucs" items="${tintucs}">
								<tr>
									<td>${tintucs.id}</td>
									<td>${tintucs.danhmuc}</td>
									<td>${tintucs.tieude}</td>
									<td>${tintucs.tomtatnoidung}</td>
									<td>${tintucs.noidung}</td>									
									<td><img alt="" src="../static/img/blog/${tintucs.hinhanh}" style="width:100px;height:100px"></td>	
									<td>${tintucs.thoigian}</td>
									<td>${tintucs.nguoidang}</td>
									<td>
									<a href="delete-tintuc?id=${tintucs.id}">
									<button type="button" class="btn btn-default">
    								   Xóa
    									</button></a></td>							
									<td><a href="update-tintuc?id=${tintucs.id}">
									<button type="button" class="btn btn-default">
    								   Sửa
    									</button></a></td>
									
								</tr>
							</c:forEach>
                  </tbody>
                </table>              
              </div>           
            </div>          
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
          </div>

          <p class="small text-center text-muted my-5">
            <em>More table examples coming soon...</em>
          </p>

        </div>
        <!-- /.container-fluid -->

        <!-- Sticky Footer -->
        <footer class="sticky-footer">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>Copyright © Your Website 2018</span>
            </div>
          </div>
        </footer>

      </div>
      <!-- /.content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
   

<!-- modal xóa -->
         

<!-- Xóa -->
						
	
    <!-- Bootstrap core JavaScript-->
    <script src="../static/vendor/jquery/jquery.min.js"></script>
    <script src="../static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../static/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="../static/vendor/datatables/jquery.dataTables.js"></script>
    <script src="../static/vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../static/js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="../static/js/demo/datatables-demo.js"></script>

  </body>

</html>
  