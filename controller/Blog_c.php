<?php
include_once 'model/Blog_m.php';
class Blog_c extends Blog_m
{
    private $blog;
    function __construct()
    {
        $this->blog = new Blog_m();
    }

    public function blog(){
        if (isset($_GET['page'])) {
            $page = $_GET['page'];
        }else{
            $page = 'blog';
        }

        switch ($page) {
            case 'blog-detail':
                if (isset($_GET['id'])) {
                    $id = $_GET['id'];
                $rs_detail_blog = $this->blog->getId_blog($id);
                }

                if (isset($_POST['sb_search'])) {
                    $keys = '%'.$_POST['keys'].'%';
                    $rs_blog = $this->blog->searchBlog($keys);
                    $count = count($rs_blog);
                    if ($count < 1){
                        echo "Không có bài viết nào được tìm thấy";
                    }
                }else{
                    $rs_blog = $this->blog->getBlog();
                }
                include_once 'views/Blog/blog-detail.php';
                break;
            default:
                $rs_blog = $this->blog->getBlog();
                include_once 'views/Blog/blog.php';
                break;
        }
    }
}
?>