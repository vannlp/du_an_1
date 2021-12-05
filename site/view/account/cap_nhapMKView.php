<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/user.css">
<div class="container">
    <div class="login-wrapper">
        <!-- menu -->
        <div class="login-layout">

            <h3>Cập nhập mật khẩu mới</h3>

            <div class="login">
                <form action="#" method="post">
                    <div class="form-group">
                        <label for="">
                            Nhập tên đăng nhập
                        </label>
                        <input type="password" name="ten_dang_nhap" id="" class="form-controll">
                    </div>

                    <div class="form-group">
                        <label for="">
                            Nhập mật khẩu mới
                        </label>
                        <input type="password" name="mat_khau" id="" class="form-controll">
                    </div>
                    <div class="form-group">
                        <label for="">
                            Xác nhận mật khẩu mới
                        </label>
                        <input type="password" name="re_mat_khau" id="" class="form-controll">
                    </div>

                    <button type="submit" name="btn-sumit" class="button button--blue">Gửi</button>

                    <div class="form-group">
                        <?php
                        echo '<h4>' . $data['thong-bao'] . '</h4>'
                        ?>
                    </div>
                </form>
            </div>
        </div>

    </div>
    <!--  -->

</div>
</div>