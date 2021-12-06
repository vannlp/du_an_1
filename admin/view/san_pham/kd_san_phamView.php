<div class="listNew">
    <div class="listNew__header">
        <div class="chucNang__header-khung">
            <h3 class="chucNang__header-h3">
                Quản Lý Sản Phẩm
            </h3>
            <div class="chucNang__header-kCn">
                <h4 class="chucNang__header-h4">Kiểm duyệt sản phẩm</h4>
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
                            <th>
                                <input type="checkbox" name="" id="">
                            </th>
                            <th>STT</th>
                            <th>ID</th>
                            <th>Tên danh mục</th>
                            <th>Tên sản phẩm</th>
                            <th>Trạng thái</th>
                            <th>Hình ảnh</th>
                            <th>Xem thêm</th>
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
                        foreach ($data['list_sp'] as $key => $value) {
                            echo '
                                <tr>
                                    <td>
                                        <input type="checkbox" name="" id="">
                                    </td>
                                    <td>' . $key++ . '</td>
                                    <td class="id_sp">' . $value[0] . '</td>
                                    <td>' . $value[13] . '</td>
                                    <td>' . $value[3] . '</td>
                                    <td> ';
                         ?>
                                    <select name="" class="tinh-trang-sp" id="" style="width: 100%; font-size: 15px;">
                                        <option <?php if ($value[10] == 0) echo 'selected' ?> value="0">Đang chờ duyệt</option>
                                        <option <?php if ($value[10] == 1) echo 'selected' ?> value="1">Đã duyệt</option>
                                    </select>
                                    <?php 
                                        echo '
                                    </td>
                                    <td class="td-img">
                                        <img src="' . URL_PUBLIC . 'site/img/' . $value[5] . '"/>
                                    </td>
                                    <td>
                                    <a href="../?c=chitiet&a=index&id=' . $value[0] . '" target="_blank" class="btn btn-warning">Chi tiết</a>
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
        const tinh_trang_sp = document.querySelectorAll('.tinh-trang-sp')
        const id_spS = document.querySelectorAll('.id_sp')

        tinh_trang_sp.forEach((data, index) => {
            data.addEventListener('change', () => {
                let trang_thai = data.value;
                let id_sp = id_spS[index].innerText;

                 console.log(trang_thai, id_sp);
                $.get(
                    '?c=san_pham&a=tinh_trang_sp', {
                        trang_thai: trang_thai,
                        id_sp: id_sp
                    },
                    function(value) {

                    }
                );
            })
        })
    })
</script>