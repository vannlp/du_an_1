<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/user.css">
<div class="container">
    <div class="login-wrapper">
        <!-- menu -->
        <div class="login-layout">

            <h3>Quên mật khẩu</h3>

            <div class="login">
                <form action="?c=account&a=quen_mat_khau" method="post">

                    <div class="form-group">
                        <label for="">
                            Nhập địa chỉ email
                        </label>
                        <input type="email" name="email" id="" class="form-controll" placeholder="Nhập Email của bạn">
                        <?php
                            if (isset($data['thong_bao'])) {
                                echo '<h4 style="text-align: center; font-size: 20px">' . $data['thong_bao'] . '</h4>';
                            }
                        ?> 
                    </div>

                    <button type="submit" name="btn-submit" class="button button--blue">Gửi</button>
                </form>
            </div>
        </div>

    </div>
    <!--  -->

</div>
</div>