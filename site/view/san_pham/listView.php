<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/user.css">

<section>
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

        <div class="khung_main_wrapper">
            <h2>Danh sách sản phẩm</h2>
            <div class="main_1_wrapper">
                <a href="?c=san_pham&a=add_san_pham" class="button button--blue">Thêm sản phẩm</a>
            </div>

            <table class="table__main">
                <thead>
                    <tr>
                        <th>id sản phẩm</th>
                        <th>Tên sản phẩm</th>
                        <th>Ảnh sản phẩm</th>
                        <th>Hành động</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    foreach ($data['dataSP'] as $value) {
                        echo '
                            <tr>
                                <td>' . $value[0] . '</td>
                                <td>' . $value[3] . '</td>
                                <td>
                                    <img src="' . URL_WEB . '/public/site/img/' . $value[5] . '"/>
                                </td>
                                <td>
                                    <a href="#" class="button button--yello">Edit</a>
                                    <a href="#" class="button button--red">Xóa</a>
                                </td>
                            </tr>
                        ';
                    }
                    ?>

                </tbody>
            </table>
        </div>
    </div>
</section>