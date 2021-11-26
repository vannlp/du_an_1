<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/user.css">
<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/main.css">

<div class="container">
    <div class="danhMucAll sanPham">
        <!-- menu -->
        <nav class="menu_user">
            <label class="logo_nav">Quản Lý</label>
            <ul>
                <li><a href="?c=account&a=quan_ly_tk">Thông tin cá nhân</a></li>
                <li><a href="">Đổi mật khẩu</a></li>
                <li><a href="?c=san_pham&a=add_san_pham">Quản lý sản phẩm</a></li>
                <li><a href="">Quản lý hóa đơn</a></li>
                <li><a href="">Thống kê</a></li>
            </ul>
        </nav>
    </div>
    <!--  -->
    <div class="danhMucAll">
        <form class="sanPham" method="post" enctype="multipart/form-data">
            <div class="user_img">
                <img src="img/test_banner.jpg" alt="" srcset="" />
                <div>
                    <input type="file" id="file" name="file" multiple />
                </div>
            </div>

            <div class="user_text">
                <div class="form-group">
                    <label for="">Họ và tên</label>
                    <input type="text" value="Phan Tường Văn" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="">Email</label>
                    <input type="email" value="phanvan0322@gmail.com" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="">Số điện thoại</label>
                    <input type="text" value="095521211" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="">Địa chỉ</label>
                    <input type="text" value="1552 kafsjkfuiasiu" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="">CMND</label>
                    <input type="text" value="556545441" class="form-control" />
                </div>
                <button type="submit" class="button button--blue">Submit</button>
            </div>
        </form>
    </div>
</div>