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

    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

      <a class="navbar-brand mr-1" href="/admin">Quản Lý Tin Tức</a>

      <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
        <i class="fas fa-bars"></i>
      </button>

      <!-- Navbar Search -->
      <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
          <div class="input-group-append">
            <button class="btn btn-primary" type="button">
              <i class="fas fa-search"></i>
            </button>
          </div>
        </div>
      </form>

      <!-- Navbar -->
      

    </nav>

    <div id="wrapper">

      <!-- Sidebar -->
      <ul class="sidebar navbar-nav">
        <li class="nav-item">         
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
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="#">Dashboard</a>
            </li>
            <li class="breadcrumb-item active">Tables</li>
          </ol>

          <!-- DataTables Example -->
           <div class="container-fluid">

          <!-- Breadcrumbs-->
         

          <!-- DataTables Example -->
          <div class="row">
          <form class="form-horizontal" action="/save-tintuc"  method="POST" >
		
		    <input type="hidden" name="id" value="${tintuc.id}"/>
		    <div class="form-group">
		        <label>Loại tin tức</label> 
		         
		            <select class="form-control" id="danhmuc" name="danhmuc">
				      <option value="Thế giới">Thế giới</option>
   					 <option value="Công nghệ" >Công nghệ</option>
  					  <option value="Giáo dục">Giáo dục</option>
				      </select>
		    </div>
		    <div class="form-group">
		        <label>Tiêu đề tin tức</label> 
		        <input type="text" class="form-control" name="tieude" value="${tintuc.tieude}"/>
		    </div>
		    <div class="form-group">
		        <label>Nội dung bao quát</label> 
		        <textarea class="form-control" cols="30" name="tomtatnoidung" rows="10" value="${tintuc.tomtatnoidung}" style="width:600px" ></textarea>
		        
		    </div>
		    <div class="form-group">
		        <label>Nội dung </label> 
		        
		         <textarea class="form-control" cols="30" name ="noidung" rows="10" value="${tintuc.noidung}" ></textarea>
		    </div>
		    <div class="form-group">
		        <label>Người đăng bài</label> 
		       <input type="text" class="form-control" name="nguoidang" value="${tintuc.nguoidang}"/>
		    </div>
		     <div class="form-group">
		        <label>Hình ảnh</label> 
		       <input type="text" class="form-control" name="hinhanh" value="${tintuc.hinhanh}"/>
		    </div>
		     	
		    <button type="submit" class="btn btn-primary">Save</button>
		</form>
        </div>
   

          <p class="small text-center text-muted my-5">
            <em>More table examples coming soon...</em>
          </p>

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
            <a class="btn btn-primary" href="login.html">Logout</a>
          </div>
        </div>
      </div>
    </div>

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

  