<div class="listNew">
    <div class="listNew__header">
        <div class="chucNang__header-khung">
            <h3 class="chucNang__header-h3">
                Danh Mục
            </h3>
            <div class="chucNang__header-kCn">
                <h4 class="chucNang__header-h4">Chỉnh sửa danh mục</h4>
            </div>
        </div>
    </div>
    <div class="listNew__main">
        <div class="listSP__item">
            <button class="listNew__btn" type="button">Thêm danh mục</button>
            <div class="listNew__khung">
                <form action="?c=san_pham&a=edit_danh_muc&id=<?= $_GET['id'] ?>" enctype="multipart/form-data" method="post">
                    <div class="form-group">
                        <label>Nhập tên danh mục</label>
                        <input required type="text" value="<?= $data['dataDM']['tieu_de'] ?>" class="form-control" placeholder="Tên danh mục" name="tieu_de">
                    </div>
                    <div class="form-group">
                        <label>Thêm ảnh đại diện</label>
                        <input type="file" class="form-control" name="img">
                    </div>
                    <div class="form-group">
                        <label>Nhập mô tả</label>
                        <textarea required name="noi_dung" id="mota" class="form-control" cols="30" rows="10" class><?= $data['dataDM']['noi_dung'] ?></textarea>
                    </div>
                    <button name="btn-submit-dm" type="submit" class="btn btn-primary">Submit</button>
                </form>

            </div>
        </div>
    </div>
</div>
<script src="<?= URL_PUBLIC ?>admin/js/thuPhong.js"></script>