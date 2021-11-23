<div class="listNew">
    <div class="listNew__header">
        <div class="chucNang__header-khung">
            <h3 class="chucNang__header-h3">
                Module tin tức
            </h3>
            <div class="chucNang__header-kCn">
                <a href="?c=newAdmin&a=addNews" class="btn btn-primary">Thêm mới</a>
            </div>
        </div>
    </div>
    <div class="listNew__main">
        <div class="listNew__item full-width">
            <button class="listNew__btn" type="button">Thêm tin tức</button>
            <div class="listNew__khung">
                <table class="table-striped" width="100%">
                    <thead>
                        <tr>
                            <th>
                                <input type="checkbox" name="" id="">
                            </th>
                            <th>STT</th>
                            <th>Tên bài viết</th>
                            <th>Ngày đăng</th>
                            <th>Danh mục</th>
                            <th>Hành động</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach ($data['listNews'] as $key => $value) {
                            echo '
                            <tr>
                                <td>
                                    <input type="checkbox" name="" id="">
                                </td>
                                <td>' . $key + 1 . '</td>
                                <td>' . $value[1] . '</td>
                                <td>' . $value[2] . '</td>
                                <td>' . $value[3] . '</td>
                                <td>
                                    <a href="?c=newAdmin&a=deleteTin&id=' . $value[0] . '" class="btn btn-danger">Xóa</a>
                                    <a href="?c=newAdmin&a=editTin&id=' . $value[0] . '" class="btn btn-warning">Edit</a>
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
    <div class="listNew__footer">
        <div class="listNew__item full-width">
            <button class="listNew__btn" type="button">Chức năng</button>
            <div class="listNew__khung">
                <nav aria-label="Page navigation example">
                    <ul class="pagination">
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li class="page-item"><span class="page-link">1</span></li>
                        <li class="page-item"><span class="page-link">2</span></li>
                        <li class="page-item"><span class="page-link">3</span></li>
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>
<script src="<?= URL_PUBLIC ?>admin/js/thuPhong.js"></script>