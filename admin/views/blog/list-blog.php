<div class="page-title">
  <div class="title_left">
    <h3> Danh sách bài viết</h3>
  </div>
  <div class="title_right">
    <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
	    <form action="" method="POST" role="form" class="form">
	        <div class="input-group">
		        <input type="text" name="keys" class="form-control" required="" placeholder="Tìm Bài Viết...">
		        <span class="input-group-btn">
		            <button class="btn btn-default" type="submit" name="sb_search">Tìm!</button>
		        </span>
	     
	        </div>
	    </form>
    </div>
  </div>
<table class="table table-inverse table-bordered">
	<thead>
		<tr>
			<th class="text-center" width="50px;">STT</th>
			<th class="text-center" width="130px">Ảnh đại diện</th>
			<th class="text-center">Tên bài viết</th>
			<th class="text-center" width="120px;">Ngày viết bài</th>
			<th class="text-center" width="220px;">Chức năng</th>
		</tr>
	</thead>

	<?php 
	  		$stt = 0;
	  		foreach ($rs_blog as $key => $value) {
	  		$stt++;
	?>
	<tbody>
	    <tr>
	      <td scope="row" class="text-center"><?php echo $stt ?></td>
	      <td class="text-center"><img style="width: 100px;height: 100px;" src="images/blog/<?php echo $value['post_avatar']; ?>"></td>
	      <td><?php echo $value["post_name"] ?></td>
	      <td class="text-center"><?php echo $value["dateTime"] ?></td>
	      <td class="text-center">
              <a href="index.php?page=list-blog&method=detail&id=<?php echo $value['id_post'] ?>">
                  <button class="btn btn-dark">Xem</button>
              </a>
			<a href="index.php?page=list-blog&method=edit&id=<?php echo $value['id_post'] ?>">
				<button class="btn btn-dark">Sửa</button>
			</a>
			<a onclick="return confirm('Bạn có chắc chắn muốn xóa bài viết này chứ?')" href="index.php?page=list-blog&method=del&id=<?php echo $value['id_post'] ?>">
				<button class="btn btn-dark">Xóa</button>
			</a>
		  </td>
	    </tr>
	</tbody>
	<?php
	  	}
	?>

</table>
</div>