<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/user.css">
<div class="container">
    <div class="login-wrapper signup-wrapper">
        <!-- menu -->
        <div class="login-layout">

            <h3>Đăng nhập</h3>

            <div class="login">
                <form action="?c=account&a=signup" method="post">

                    <div class="form-group">
                        <label for="">
                            Họ và tên
                        </label>
                        <input type="text" name="hoten" id="" required="required" class="form-controll" placeholder="Tên đăng nhập">
                    </div>

                    <div class="form-group">
                        <label for="">
                            Địa chỉ Gmail
                        </label>
                        <input type="email" name="email" id="" required="required" class="form-controll" placeholder="Tên đăng nhập">
                    </div>

                    <div class="form-group">
                        <label for="">
                            Tên đăng nhập
                        </label>
                        <input type="text" name="tenDN" id="" required="required" class="form-controll" placeholder="Tên đăng nhập">
                    </div>

                    <div class="form-group">
                        <label for="">
                            Mật khẩu
                        </label>
                        <input type="password" name="matkhau" id="" required="required" class="form-controll" placeholder="Tên đăng nhập">
                    </div>

                    <div class="form-group">
                        <label for="">
                            Nhập lại mật khẩu
                        </label>
                        <input type="password" name="matkhau1" id="" required="required" class="form-controll" placeholder="Tên đăng nhập">
                    </div>
                    <div class="form-group">
                        <button type="submit" name="btn-signup">Đăng Ký</button>
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