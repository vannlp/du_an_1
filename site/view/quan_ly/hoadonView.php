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
        <table class="table__main">
            <thead>
                <tr>
                    <th>Mã hóa đơn</th>
                    <th>Tên khách hàng</th>
                    <th>Tổng tiền</th>
                    <th>Ngày mua</th>
                    <th>Trạng thái</th>
                    <th>Chi tiết</th>
                </tr>
            </thead>
            <tbody style="text-align: center;">
                <?php foreach ($data['data-hoaDon'] as $value) { ?>
                    <tr>
                        <td class="id_hoa_don"><a><?= $value[0] ?></a></td>
                        <td>
                            <form action="?c=quan_ly&a=khach" method="POST">
                                <input name="id"
                                 value="<?= $value[5] ?>" style="display: none;">
                                <input name="idhd"
                                 value="<?= $value[0] ?>" style="display: none;">
                                 <button type="submit" name="btn-khach" style="width: 100%; font-size: 15px; background-color: #0082e6; color: white;"><?= $value[1] ?></button>
                            </form>
                        </td>
                        <td><?= number_format($value[2]) ?></td>
                        <td><?php
                            $arr = explode(' ', $value[3]);
                            echo $arr[0];
                            ?></td>
                        <td>
                            <select name="" class="tinh-trang-don" id="" <?php if ($value[4] == 3 or $value[4] == 4) {
                                                                                echo 'disabled';
                                                                            } ?> style="width: 100%; font-size: 17px;">
                                <option <?php if ($value[4] == 0) echo 'selected' ?> value="0">Đang xử lý</option>
                                <option <?php if ($value[4] == 1) echo 'selected' ?> value="1">Đã xem xét</option>
                                <option <?php if ($value[4] == 2) echo 'selected' ?> value="2">Đang giao hàng</option>
                                <option <?php if ($value[4] == 3) echo 'selected' ?> value="3">Đã giao hàng</option>
                                <option <?php if ($value[4] == 4) echo 'selected' ?> value="4">Đã hủy đơn</option>
                            </select>
                        </td>
                        <td>
                            <a href="?c=quan_ly&a=hdct&id=<?= $value[0] ?>"><button style="width: 100%; font-size: 15px; background-color: rgb(253, 45, 45); color: white;">Xem chi tiết</button></a>
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