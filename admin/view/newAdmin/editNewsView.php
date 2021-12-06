<?php extract($data['tin-tuc']); ?>
<div class="listNew">
    <div class="listNew__header">
        <div class="chucNang__header-khung">
            <h3 class="chucNang__header-h3">
                Module tin tức
            </h3>
            <div class="chucNang__header-kCn">
                <a href="<?= URL_WEB ?>/admin.php?c=newAdmin&a=list" class="btn btn-primary">Danh sách tin</a>
            </div>
        </div>
    </div>
    <div class="listNew__main">
        <div class="listNew__item full-width">
            <button class="listNew__btn" type="button">Chỉnh sửa tin tức</button>
            <div class="listNew__khung">
                <form action="?c=tin_tuc&a=index" enctype="multipart/form-data" method="post" class="tinTuc-wrapper">
                    <div class="form-group">
                        <label for="title">Title bài viết</label>
                        <input type="text" placeholder="Title bài viết" name="title" id="title" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="anh">Ảnh đại diện</label>
                        <input type="file" name="anh" id="anh" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="danhMuc">Danh mục</label>
                        <select name="danhMuc" id="danhMuc" class="form-control">
                            <option value="">--Chọn danh mục--</option>
                            <?php
                            foreach ($data['danhMuc'] as $value) {
                                echo '
                                <option value="' . $value[0] . '">' . $value[1] . '</option>
                                ';
                            }
                            ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="noiDung">Nội dung</label>
                        <textarea name="noiDung" placeholder="Nhập nội dung vào đây" id="noiDung" class="form-control" cols="30" rows="10"></textarea>
                    </div>
                    <script>
                        CKEDITOR.replace('noiDung');
                    </script>
                    <div class="form-group">
                        <button type="submit" name="btn-submit" class="btn btn-primary">Submit</button>
                        <button type="reset" class="btn btn-warning">Nhập lại</button>
                    </div>
                </form>
                <div class="alert alert-success">
                    <?= $data['thongBao'] ?>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="<?= URL_PUBLIC ?>admin/js/thuPhong.js"></script>