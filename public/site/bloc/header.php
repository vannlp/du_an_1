<header class="header">
    <section class="top-head">
        <div class="container">
            <div class="top-head-row">
                <a class="logo-wrapper" href="?c=index">
                    <h1>LifeSign</h1>
                </a>
                <div class="top-header__main-wrapper">
                    <form action="?c=timkiem&a=index" class="search-wrapper" method="post">
                        <input type="search" name="tim-kiem" placeholder="Nhập tên sản phẩm hoặc danh mục" id="" />
                        <button type="submit" name="btn-timkiem">
                            <i class="fas fa-search"></i><span>Tìm kiếm</span>
                        </button>
                    </form>
                    <div class="account-wrapper">
                        <i class="far fa-user header__icon header__icon--primary"></i>
                        <div class="account-action">
                            <?php
                            if (!isset($_SESSION['login'])) {
                                echo '
                                    <a href="?c=account&a=login" class="header_text">Đăng nhập</a>
                                    <span class="header_text"><b>/</b></span>
                                    <a href="?c=account&a=signup" class="header_text">Đăng ký</a>
                                ';
                            } else {
                                echo '
                                    <div class="account-2">
                                        <a href="' . URL_WEB . '/?c=account&a=quan_ly_tk" class="header_text header_text--secondary">'.$_SESSION['login'][2].'</a>
                                        <i class="fas fa-angle-down header__icon"></i>
                                        <span>/<span>
                                        <a href="?c=account&a=logout" class="header_text">Đăng xuất</a>
                                    </div>
                                    ';
                            }
                            ?>
                        </div>
                    </div>
                    <a class="cart-wrapper" href="?c=giohang&a=index">
                        <i class="
                    fas
                    fa-shopping-cart
                    header__icon header__icon--primary
                  "></i>
                        <span class="header_text header_text--secondary">Giỏ hàng</span>
                    </a>
                </div>
            </div>
        </div>
    </section>
</header>