<div class="listNew">
    <div class="listNew__header">
        <div class="chucNang__header-khung">
            <h3 class="chucNang__header-h3">
                Module sản phẩm
            </h3>
            <div class="chucNang__header-kCn">
                <h4 class="chucNang__header-h4">Danh mục sản phẩm</h4>
            </div>
        </div>
    </div>
    <div class="listNew__main">
        <div class="listNew__item">
            <button class="listNew__btn" type="button">Thêm danh mục</button>
            <div class="listNew__khung">
                <form action="?c=san_pham&a=add_danh_muc" enctype="multipart/form-data" method="post">
                    <div class="form-group">
                        <label>Nhập tên danh mục</label>
                        <input required type="text" class="form-control" placeholder="Tên danh mục" name="tieu_de">
                    </div>
                    <div class="form-group">
                        <label>Thêm ảnh đại diện</label>
                        <input required type="file" class="form-control" name="img">
                    </div>
                    <div class="form-group">
                        <label>Nhập mô tả</label>
                        <textarea required name="noi_dung" id="mota" class="form-control" cols="30" rows="10" class></textarea>
                    </div>
                    <button name="btn-submit-dm" type="submit" class="btn btn-primary">Submit</button>
                </form>
                <?php
                if ($data['isSuccess']) {
                    echo '<h4>Thêm Thành công</h4>';
                }
                ?>
            </div>
        </div>
        <div class="listNew__item">
            <button class="listNew__btn" type="button">Danh sách</button>
            <div class="listNew__khung">
                <table class="table-striped" width="100%">
                    <thead>
                        <tr>
                            <th>
                                <input type="checkbox" name="" id="">
                            </th>
                            <th>STT</th>
                            <th>Tên danh mục</th>
                            <th>Hành động</th>
                            <th>Hình ảnh</th>
                        </tr>
                    </thead>
                    <style>
                        .td-img>img {
                            width: 40px;
                            height: auto;
                        }
                    </style>
                    <tbody>
                        <?php
                        foreach ($data['list_dm_sp'] as $key => $value) {
                            echo '
                                <tr>
                                    <td>
                                        <input type="checkbox" name="" id="">
                                    </td>
                                    <td>' . $key + 1 . '</td>
                                    <td>' . $value[1] . '</td>
                                    <td class="td-img">
                                        <img src="' . URL_PUBLIC . 'site/img/' . $value[3] . '"/>
                                    </td>
                                    <td>
                                        <a href="?c=san_pham&a=delete&id=' . $value[0] . '" class="btn btn-danger">Xóa</a>
                                        <a href="?c=san_pham&a=edit_danh_muc&id=' . $value[0] . '" class="btn btn-warning">Edit</a>
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