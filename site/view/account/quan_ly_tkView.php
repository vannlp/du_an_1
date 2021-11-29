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
                <img width="350px" src="<?= URL_WEB ?>/public/site/img/<?= $data['nguoi_dung'][9] ?>" alt="" srcset="" />
                <div>
                    <input type="file" id="file" name="img" multiple />
                </div>
            </div>

            <div class="user_text">
                <div class="form-group">
                    <label for="">Họ và tên</label>
                    <input value="<?= $data['nguoi_dung'][2] ?>" name="ho_ten" type="text" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="">Email</label>
                    <input type="email" name="email" value="<?= $data['nguoi_dung'][6] ?>" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="">Số điện thoại</label>
                    <input type="text" name="sdt" value="<?= $data['nguoi_dung'][4] ?>" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="">Địa chỉ</label>
                    <input type="text" name="dia_chi" value="<?= $data['nguoi_dung'][3] ?>" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="">CMND</label>
                    <input type="text" name="cmnd" value="<?= $data['nguoi_dung'][5] ?>" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="">Ngày sinh</label>
                    <input type="date" name="ngay_sinh" value="<?= $data['nguoi_dung'][7] ?>" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="">Giới tính</label><br>
                    <?php
                    if ($data['nguoi_dung'][8] == 'nam') {
                        echo '
                        <input type="radio" checked name="gioi_tinh" value="nam" /> nam
                        <input type="radio" name="gioi_tinh" value="nữ" /> nữ
                        ';
                    } else if ($data['nguoi_dung'][8] == 'nữ') {
                        echo '
                        <input type="radio"  name="gioi_tinh" value="nam" /> nam
                        <input type="radio" checked name="gioi_tinh" value="nữ" /> nữ
                        ';
                    } else {
                        echo '
                        <input type="radio" name="gioi_tinh" value="nam" /> nam
                        <input type="radio" name="gioi_tinh" value="nữ" /> nữ
                        ';
                    }
                    ?>

                </div>
                <button type="submit" name="btn-submit" class="button button--blue">Submit</button>
            </div>
        </form>
    </div>
</div>