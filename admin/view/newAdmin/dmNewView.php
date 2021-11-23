<div class="listNew">
    <div class="listNew__header">
        <div class="chucNang__header-khung">
            <h3 class="chucNang__header-h3">
                Module tin tức
            </h3>
            <div class="chucNang__header-kCn">
                <h4 class="chucNang__header-h4">Danh mục tin</h4>
            </div>
        </div>
    </div>
    <div class="listNew__main">
        <div class="listNew__item">
            <button class="listNew__btn" type="button">Thêm danh mục</button>
            <div class="listNew__khung">
                <form action="?c=newAdmin&a=danhmuc" method="post">
                    <div class="form-group">
                        <label for="tendm">Nhập tên danh mục</label>
                        <input required type="text" class="form-control" placeholder="Tên danh mục" name="tendm" id="tendm">
                    </div>
                    <div class="form-group">
                        <label for="mota">Nhập mô tả</label>
                        <textarea required name="mota" id="mota" class="form-control" cols="30" rows="10" class></textarea>
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
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach ($data['dataDanhMuc'] as $key => $value) {
                            echo '
                                <tr>
                                    <td>
                                        <input type="checkbox" name="" id="">
                                    </td>
                                    <td>' . $key + 1 . '</td>
                                    <td>' . $value[1] . '</td>
                                    <td>
                                        <a href="?c=newAdmin&a=deleteDM&id=' . $value[0] . '" class="btn btn-danger">Xóa</a>
                                        <a href="?c=newAdmin&a=editDanhMuc&id=' . $value[0] . '" class="btn btn-warning">Edit</a>
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