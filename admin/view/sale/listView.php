<div class="listNew">
    <div class="listNew__header">
        <div class="chucNang__header-khung">
            <h3 class="chucNang__header-h3">
                Mã khuyến mãi
            </h3>
        </div>
        <a href="../?c=giamgia&a=index" target="blank" class="btn btn-primary" style="font-size: 17px">Danh sách</a>
    </div>
    <div class="listNew__main">
        <div class="listNew__item full-width">
            <button class="listNew__btn" type="button">Thêm mã</button>
            <div class="listNew__khung">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">id mã giảm</th>
                            <th scope="col">Phần trăm giảm</th>
                            <th scope="col">Ngày bắt đầu</th>
                            <th scope="col">Ngày kết thúc</th>
                            <th scope="col">Hành động</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach ($data['ma_giam'] as $key => $value) {
                            echo '
                            <tr>
                                <th scope="row">' . $key . '</th>
                                <td>' . $value[0] . '</td>
                                <td>' . $value[2] . '%</td>
                                <td>' . $value[4] . '</td>
                                <td>' . $value[5] . '</td>
                                <td>
                                    <a href="?c=sale&a=delete&id=' . $value[0] . '" class="btn btn-danger">Xóa</a>
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