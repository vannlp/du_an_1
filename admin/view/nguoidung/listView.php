<div class="listNew">
    <div class="listNew__header">
        <div class="chucNang__header-khung">
            <h3 class="chucNang__header-h3">
                Người dùng
            </h3>
            <div class="chucNang__header-kCn">
                <h4 class="chucNang__header-h4">Kiểm duyệt người dùng</h4>
            </div>
        </div>
    </div>
    <div class="listNew__main">
        <div class="listSP__item">
            <button class="listNew__btn" type="button">Danh sách</button>
            <div class="listNew__khung">
                <table class="table-striped" width="100%">
                    <thead>
                        <tr>
                            <th>STT</th>
                            <th>Tên đăng nhập</th>
                            <th>Tên người dùng</th>
                            <th>SĐT</th>
                            <th>Địa chỉ</th>
                            <th>Vai trò</th>
                            <th>Trạng thái</th>
                        </tr>
                    </thead>
                    <style>
                        .td-img>img {
                            width: 50px;
                            height: auto;
                            margin: 0 auto;
                            margin-left: 20px;
                        }
                        .btn-warning{
                            font-size: 17px;
                        }
                    </style>
                    <tbody>
                        <?php
                        foreach ($data['danhsach'] as $key => $value) {
                            echo '
                                <tr>
                                    <td>' . $key++ . '</td>
                                    <td class="id_kh">' . $value[0] . '</td>
                                    <td>' . $value[2] . '</td>
                                    <td>' . $value[4] . '</td>
                                    <td>' . $value[3] . '</td>
                                    <td> ';
                         ?>
                                    <select name="" class="vai_tro" id="" style="width: 100%; font-size: 15px;">
                                        <option <?php if ($value[10] == 1) echo 'selected' ?> value="1">Quản lý</option>
                                        <option <?php if ($value[10] == 2) echo 'selected' ?> value="2">Khách hàng</option>
                                    </select>
                                    <?php 
                                        echo '
                                    </td>
                                    <td>';
                                    ?>
                                    <select name="" class="trang_thai" id="" style="width: 100%; font-size: 15px;">
                                        <option <?php if ($value[11] == 0) echo 'selected' ?> value="0">Đóng</option>
                                        <option <?php if ($value[11] == 1) echo 'selected' ?> value="1">Mở</option>
                                    </select>
                                    <?php echo '
                                    </td>
                                </tr>
                                ';
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<script src="<?= URL_PUBLIC ?>admin/js/thuPhong.js"></script>
<script>
    $(document).ready(() => {
        function xuly(tamp){
            const khachhang = document.querySelectorAll('.' + tamp)
            const id_khS = document.querySelectorAll('.id_kh')

            khachhang.forEach((data, index) => {
                data.addEventListener('change', () => {
                    let khachhangU = data.value;
                    let id_kh = id_khS[index].innerText;

                    $.get(
                        '?c=nguoidung&a=khachhang_update', {
                            khachhang: khachhangU,
                            id_kh: id_kh,
                            tamp: tamp
                        },
                        function(value) {
                        }
                    );
                })
            })
        }
        xuly('vai_tro')
        xuly('trang_thai')
    })
</script>