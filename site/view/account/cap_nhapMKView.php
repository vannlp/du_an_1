<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/user.css">
<div class="container">
    <div class="login-wrapper">
        <!-- menu -->
        <div class="login-layout">

            <h3>Cập nhập mật khẩu mới</h3>

            <div class="login">
                <form action="?c=account&a=cap_nhap" id="form-dk" method="post">
                    <div class="form-group">
                        <label for="">
                            Nhập tên đăng nhập
                        </label>
                        <input type="text" required="required" name="ten_dang_nhap" id="" placeholder="Tên đăng nhập của bạn" class="form-controll">
                    </div>

                    <div class="form-group">
                        <label for="">
                            Nhập mật khẩu mới
                        </label>
                        <input type="password" required="required" name="mat_khau" placeholder="Mật khẩu mới (ít nhất 8 ký tự)" id="" class="form-controll">
                    </div>
                    <div class="form-group">
                        <label for="">
                            Xác nhận mật khẩu mới
                        </label>
                        <input type="password" required="required" name="re_mat_khau" placeholder="Nhập lại mật khẩu mới (phải giống mật khẩu mới)" id="" class="form-controll">
                    </div>

                    <button type="submit" name="btn_mk" class="button button--blue">Gửi</button>

                    <div class="form-group">
                        <?php
                        echo '<h4>' . $data['thong_bao'] . '</h4>';
                        ?>
                    </div>
                </form>
            </div>
        </div>

    </div>
    <!--  -->

</div>
</div>
<script>
    $(document).ready(() => {
        $("#form-dk").validate({
            onfocusout: false,
            onkeyup: false,
            onclick: false,
            rules: {
                'mat_khau': {
                    required: true,
                    minlength: 8,
                },
                're_mat_khau': {
                    required: true,
                    minlength: 8,
                    equalTo: "mat_khau",
                }
            },
            messages: {
                'mat_khau': {
                    required: "Bắt buộc nhập mật khẩu",
                    minlength: 'Mật khẩu phải có ít nhất 8 ký tự',
                },
                're_mat_khau': {
                    required: 'Bắt buộc nhập lại mật khẩu',
                    minlength: 'Mật khẩu phải có ít nhất 8 ký tự',
                    equalTo: "Nhập lại mật khẩu sai",
                }
            },
        });
    });
</script>