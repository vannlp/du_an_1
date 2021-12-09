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
                if ($_SESSION['login'][10] == 1 or $_SESSION['login'][10] == 0) {
                    echo '<li><a href="admin.php">Admin</a></li>';
                }
                ?>
            </ul>
        </nav>
    </div>
    <div class="danhMucAll">
        <a href="?c=quan_ly&a=hoadoncuatoi" class="button button--blue">Đơn hàng của tôi</a>
        <a href="?c=quan_ly&a=hoadon" class="button button--blue">Đơn hàng của khách</a>
    </div>
    <div class="danhMucAll">
        <h3>Đơn hàng của khách</h3>
        <hr>
        <br>
        <h4>Đơn hàng: <?= $_GET['id'] ?></h4>
        <hr>
        <br>
        <table class="table__main">
            <thead>
                <tr>
                    <th>Tên sản phẩm</th>
                    <th>Số lượng</th>
                    <th>Tổng tiền</th>
                </tr>
            </thead>
            <tbody>

                <?php
                foreach ($data['hdct'] as $value) {
                    echo '
                        <tr>
                            <td>' . $value[0] . '</td>
                            <td>' . $value[1] . '</td>
                            <td>' . number_format($value[2]) . '</td>
                        </tr>
                    ';
                }
                ?>
            </tbody>
        </table>
    </div>

</div>