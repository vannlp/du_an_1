<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/user.css">
<div class="container">
    <div class="login-wrapper">
        <!-- menu -->
        <div class="login-layout">

            <h3>Đăng nhập</h3>

            <div class="login">
                <form action="?c=account&a=login" method="post">

                    <div class="form-group">
                        <label for="">
                            Tên đăng nhập
                        </label>
                        <input type="text" name="ten_dang_nhap" id="" class="form-controll" placeholder="Tên đăng nhập">
                    </div>

                    <div class="form-group">
                        <label for="">
                            Mật khẩu
                        </label>
                        <input type="password" name="mat_khau" id="" class="form-controll" placeholder="Mật khẩu">
                    </div>
                    <div class="form-group">
                        <a href="?c=account&a=quen_mat_khau">Quên mật khẩu</a>
                    </div>
                    <div class="form-group">
                        <button type="submit" name="btn-submit">Đăng nhập</button>
                    </div>
                    <?php
                    if (isset($data['thong_bao'])) {
                        echo '<h4>' . $data['thong_bao'] . '</h4>';
                    }
                    ?>
                </form>
            </div>
        </div>

    </div>
    <!--  -->

</div>
</div>