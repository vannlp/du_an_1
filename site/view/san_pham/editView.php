<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/user.css">
<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/index.css">
<style>
    .man_mo {
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        z-index: 1000;
        background-color: rgba(0, 0, 0, 0.2);
        display: none;
        justify-content: center;
        align-items: center;
    }

    .man_mo .man_mo_wrapper {
        padding: 20px;
        background-color: #fff;
        position: relative;
        width: 400px;
    }

    i.close {
        position: absolute;
        top: 0;
        right: 0;
        font-size: 30px;
        cursor: pointer;
    }
</style>
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
    <!--  -->
    <div class="quanLy__main">
        <h2>Thêm sản phẩm</h2>
        <a href="?c=san_pham&a=list_san_pham" class="button button--blue">Danh sách sản phẩm</a>
        <form method="post" enctype="multipart/form-data" id="form-them">
            <div class="form-group">
                <label for="">Tên sản phẩm</label>
                <input type="text" required value="<?= $data['dataSP']['tieu_de'] ?>" name="tieu_de" class="form-control">
            </div>
            <div class="form-group">
                <label for="">Danh mục sản phẩm</label>
                <select name="id_dm_sp" class="form-control" id="">
                    <?php
                    foreach ($data['dm_sp'] as $value) {
                        if ($value[0] == $data['dataSP']['id_dm_sp']) {
                            echo '<option selected value="' . $value[0] . '">' . $value[1] . '</option>';
                        } else {
                            echo '<option value="' . $value[0] . '">' . $value[1] . '</option>';
                        }
                    }
                    ?>

                </select>
            </div>

            <div class="form-group">
                <label for="">Ảnh đại diện</label>
                <input type="file" name="img" class="form-control" id="files">
                <br>
                <img style="width: 150px" src="" alt="" id="image">
            </div>
            <script>
                document.getElementById("files").onchange = function() {
                    var reader = new FileReader();

                    reader.onload = function(e) {
                        // get loaded data and render thumbnail.
                        document.getElementById("image").src = e.target.result;
                    };

                    // read the image file as a data URL.
                    reader.readAsDataURL(this.files[0]);
                };
            </script>
            <div class="form-group">
                <label for="">Ảnh mô tả</label>
                <input type="text" readonly required name="img_mo_ta" id="img_mo_ta" class="form-control">
                <a target="_blank" href="<?= URL_WEB ?>?c=img&a=add_img" class="button button--blue">Tải ảnh lên</a>
                <button class="button button--blue" type="button" id="up_load_file">Chọn ảnh</button>
            </div>
            <div class="form-group">
                <label for="">Giá gốc</label>
                <input type="number" id="gia_goc" required min="0" value="<?= $data['dataSP']['gia_goc'] ?>" name="gia_goc" class="form-control">
            </div>
            <div class="form-group">
                <label for="">Giá sẽ bán</label>
                <input type="number" id="gia_giam" required min="0" value="<?= $data['dataSP']['gia_giam'] ?>" name="gia_giam" class="form-control">
            </div>
            <div class="form-group">
                <label for="">Số lượng</label>
                <input type="number" required min="0" value="<?= $data['dataSP']['so_luong'] ?>" name="so_luong" class="form-control">
            </div>
            <div class="form-group">
                <label for="">Mô tả</label>
                <textarea name="noi_dung" required class="form-control" id="mo_ta" cols="30" rows="10"><?= $data['dataSP']['noi_dung'] ?></textarea>
                <script>
                    CKEDITOR.replace('mo_ta');
                </script>
            </div>

            <button type="submit" name="btn-submit" id="Dang_sp" class="button button--blue">Submit</button>
        </form>
    </div>
</div>
<style>
    .root {
        display: flex;
        flex-wrap: wrap;
        align-items: flex-start;
    }

    .root>div {
        height: 80px;
        display: flex;
        align-items: flex-end;
    }
</style>
<div class="man_mo">
    <div class="man_mo_wrapper">
        <i class="fas fa-times close"></i>
        <div class="root">

        </div>
        <button class="button button--blue" id="submit-img">Submit</button>
    </div>
</div>
<script>
    $(document).ready(() => {
        let gia_goc = $('#gia_goc');
        let gia_giam = $('#gia_giam');

        $('#Dang_sp').click(() => {
            if (gia_goc.val() <= gia_giam.val()) {
                alert('giá giảm phải nhỏ hơn giá gốc');
                $("#form-them").submit(function() {
                    return false;
                });
            }
            if ($('#img_mo_ta').val() === '') {
                alert('Vui lòng chọn ảnh mô tả');
                $("#form-them").submit(function() {
                    return false;
                });
            }
        })
    });
</script>
<script>
    const up_load_file = document.querySelector('#up_load_file');
    const man_mo = document.querySelector('.man_mo')
    const close = document.querySelector('i.close');
    const root = document.querySelector('.man_mo_wrapper .root');
    const xhttp = new XMLHttpRequest();
    const submitImg = document.querySelector('#submit-img')
    const img_mo_ta = document.querySelector('#img_mo_ta')

    up_load_file.addEventListener('click', () => {
        xhttp.open("GET", "?c=img&a=list_img_ajax2&id=<?= $_GET['id'] ?>");
        xhttp.send();
        man_mo.style.display = 'flex';
        root.innerHTML = `<i class="xoay"></i>`;
        setTimeout(() => {
            let data = JSON.parse(xhttp.responseText);
            let html = data.map((value, index) => {
                let checked = '';

                if (value[3] != null) {
                    checked = 'checked';
                }

                return `
                <div>
                    <input type="checkbox" ${checked} name="" value="${value[0]}" class="checkbox" id="">
                    <img width="70px" src="/public/site/img/${value[1]}" alt="">
                </div>
                `;
            });
            html = html.join('');
            root.innerHTML = html;
        }, 1000)
    })

    submitImg.addEventListener('click', () => {
        const checkbox = document.querySelectorAll('.checkbox')
        let arr = [];
        let i = 0
        checkbox.forEach((value, index) => {
            if (value.checked === true) {
                arr[i] = value.value;
                i++;
            }
        })
        img_mo_ta.value = arr.join(';');
        man_mo.style.display = 'none';
    })

    close.addEventListener('click', () => {
        man_mo.style.display = 'none';
    })
</script>