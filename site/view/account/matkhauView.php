<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/user.css">
<link rel="stylesheet" href="<?= URL_PUBLIC ?>site/css/main.css">
<div class="container">
  <div class="danhMucAll sanPham">
    <!-- menu -->
    <nav class="menu_user">
      <label class="logo_nav">Quản Lý</label>
      <ul>
        <li><a href="?c=account&a=quan_ly_tk">Thông tin cá nhân</a></li>
        <li><a href="?c=account&a=matkhau">Đổi mật khẩu</a></li>
        <li><a href="?c=san_pham&a=add_san_pham">Quản lý sản phẩm</a></li>
        <li><a href="">Quản lý hóa đơn</a></li>
        <li><a href="">Thống kê</a></li>
        <?php
        if ($_SESSION['login'][10] == 1) {
          echo '<li><a href="admin.php">Admin</a></li>';
        }
        ?>
      </ul>
    </nav>
  </div>
  <!--  -->
  <div class="danhMucAll sanPham">
    <div class="user_input">
      <h4><?= $data['thong-bao'] ?></h4>
      <h3>Bạn vui lòng xác nhận lại mật khẩu</h3>
      <form action="?c=account&a=matkhau" method="post">
        <input type="password" required name="matkhaucu" id="" placeholder="Mật khẩu cũ">
        <input type="password" required name="matkhaumoi" id="" placeholder="Mật khẩu mới">
        <input type="password" required name="re-matkhau" id="" placeholder="Xác nhận mật khẩu mới"><br>
        <button type="submit" name="btn-submit">Thay đổi</button>
      </form>
    </div>
  </div>
</div>