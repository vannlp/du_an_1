<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/user.css">
<div class="container">
    <div class="login-wrapper">
        <!-- menu -->
        <div class="login-layout">

            <h3>Nhập mã xác nhận</h3>

            <div class="login">
                <form action="?c=account&a=xac_nhan" method="post">

                    <div class="form-group">
                        <label for="">
                            Nhập mã xác nhận
                        </label>
                        <input type="number" name="ma_xac_nhan" id="" class="form-controll" placeholder="Mã xác nhận">
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