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
                <li><a href="">Thống kê</a></li>
                <?php
                if ($_SESSION['login'][10] == 1) {
                    echo '<li><a href="admin.php">Admin</a></li>';
                }
                ?>
            </ul>
        </nav>
    </div>
    <div class="danhMucAll">
        <a href="#" class="button button--blue">Đơn hàng của tôi</a>
    </div>
    <div class="danhMucAll">
        <h3>Đơn hàng của khách</h3>
        <table class="table__main">
            <thead>
                <tr>
                    <th>id</th>
                    <th>Tên khách hàng</th>
                    <th>Tổng tiền</th>
                    <th>Ngày mua</th>
                    <th>Trạng thái</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($data['data-hoaDon'] as $value) { ?>
                    <tr>
                        <td class="id_hoa_don"><a href="?c=quan_ly&a=hdct&id=<?= $value[0] ?>"><?= $value[0] ?></a></td>
                        <td><?= $value[1] ?></td>
                        <td><?= number_format($value[2]) ?></td>
                        <td><?php
                            $arr = explode(' ', $value[3]);
                            echo $arr[0];
                            ?></td>
                        <td>
                            <select name="" class="tinh-trang-don" id="">
                                <option <?php if ($value[4] == 0) echo 'selected' ?> value="0">Đang xử lý</option>
                                <option <?php if ($value[4] == 1) echo 'selected' ?> value="1">Đã xem xét</option>
                                <option <?php if ($value[4] == 2) echo 'selected' ?> value="2">Đang giao hàng</option>
                                <option <?php if ($value[4] == 3) echo 'selected' ?> value="3">Đã giao hàng</option>
                                <option <?php if ($value[4] == 4) echo 'selected' ?> value="4">Đã hủy đơn</option>
                            </select>
                        </td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>

</div>

<script>
    $(document).ready(() => {
        const tinh_trang_don = document.querySelectorAll('.tinh-trang-don')
        const id_hoa_dons = document.querySelectorAll('.id_hoa_don')

        tinh_trang_don.forEach((data, index) => {
            data.addEventListener('change', () => {
                let trang_thai = data.value;
                let id_hoa_don = id_hoa_dons[index].innerText;

                // console.log(trang_thai, id_hoa_don);
                $.get(
                    '?c=quan_ly&a=change_tinh_trang_don', {
                        trang_thai: trang_thai,
                        id_hoa_don: id_hoa_don
                    },
                    function(value) {

                    }
                );
            })
        })
    })
</script>