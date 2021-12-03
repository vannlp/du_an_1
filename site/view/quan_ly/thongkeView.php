<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/user.css">
<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/main.css">

<div class="container">
    <div class="danhMucAll sanPham">
        <!-- menu -->
        <nav class="menu_user">
            <label class="logo_nav">Quản Lý</label>
            <ul>
                <li><a href="?c=account&a=quan_ly_tk">Thông tin cá nhân</a></li>
                <li><a href="?c=account&a=matkhau">Đổi mật khẩu</a></li>
                <li><a href="?c=san_pham&a=add_san_pham">Quản lý sản phẩm</a></li>
                <li><a href="?c=quan_ly&a=hoadon">Quản lý hóa đơn</a></li>
                <li><a href="?c=quan_ly&a=thongke">Thống kê</a></li>
                <?php
                if ($_SESSION['login'][10] == 1) {
                    echo '<li><a href="admin.php">Admin</a></li>';
                }
                ?>
            </ul>
        </nav>
    </div>
    <div class="danhMucAll">
        <h3>Thống kê</h3>
        <table class="table__main">
            <thead>
                <tr>
                    <th>Tên sản phẩm</th>
                    <th>Hiện có</th>
                    <th>Đã bán</th>
                    <th>Doanh thu</th>
                </tr>
            </thead>
            <tbody>
                <?php
                foreach ($data['thong_ke'] as $value) {
                    echo '
                    <tr>
                        <td>' . $value[0] . '</td>
                        <td>' . $value[1] . '</td>
                        <td>' . $value[2] . '</td>
                        <td>' . number_format($value[3]) . 'VND</td>
                    </tr>
                    ';
                }
                ?>
            </tbody>
        </table>
    </div>

</div>