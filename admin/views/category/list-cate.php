<div class="page-title">
  <div class="title_left">
    <h3> Thêm mới danh mục</h3>
  </div>
  <div class="title_right">
    <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
	    <form action="" method="POST" role="form" class="form">
	        <div class="input-group">
	      	
		        <input type="text" name="keys" class="form-control" required="" placeholder="Tìm Kiếm Danh Mục...">
		        <span class="input-group-btn">
		            <button class="btn btn-default" type="submit" name="sb_search">Tìm!</button>
		        </span>
	     
	        </div>
	    </form>
    </div>
  </div>
  <!-- Thêm mới danh mục -->
  <p>Tên danh mục</p>
  <form action="" method="POST">
	  <div class="form-group row">
	    
	    <div class="col-sm-10">
	      <input style="width: 300px;" required="" type="text" name="name_cate" class="form-control" placeholder="Nhập tên danh mục...">
	    </div>
	  </div>
	  <div class="form-group row">
	    <div class="col-sm-10 offset-sm-2">
	      <button type="submit" name="sm_add" class="btn btn-dark">Thêm mới</button>
	    </div>
	  </div>
  </form>
  <!-- END -->
  <!-- Bảng -->
  <p id="noti"></p> <!-- Hiển thị thông báo -->
  <h3> Danh sách danh mục</h3>
  <table class="table table-bordered ">
	  <thead class="thead-dark">
	    <tr>
	      <th class="text-center" >STT</th>
	      <th class="text-center" style="width: 900px;">Danh mục (Hãng giầy)</th>
	      <th class="text-center">Chức năng</th>
	    </tr>
	  </thead>
	  <?php 
	  		$stt = 0;
	  		foreach ($rs_cate as $key => $value) {
	  		$stt++;
	  ?>
			
	  <tbody>
	    <tr>
	      <th scope="row" class="text-center"><?php echo $stt ?></th>
	      <td><?php echo $value['cate_name'] ?></td>
	      <td class="text-center">
			<a href="index.php?page=list-cate&method=edit&id=<?php echo $value['id_cate'] ?>">
				<button class="btn btn-dark">Sửa</button>
			</a>
			<a onclick="return confirm('Bạn có chắc chắn muốn xóa danh mục này chứ?')" href="index.php?page=list-cate&method=del&id=<?php echo $value['id_cate'] ?>">
				<button class="btn btn-dark">Xóa</button>
			</a>
		  </td>
	    </tr>
	  </tbody>
	   <?php
	  		}
	   ?>
	</table>
	<!-- /Bảng -->
</div>