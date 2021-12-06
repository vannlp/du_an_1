<header class="header">
    <div class="container">
        <div class="row header__row">
            <div class="col-auto">
            </div>
            <div class="col-auto">
                <div class="header__account">
                    <span class="account__text">Xin chào, <span class="account__text--1"><?php echo $_SESSION['login'][2] ?></span></span>
                    <div class="header__menu2">
                        <div class="header__imgs">
                            <img src="<?= URL_PUBLIC ?>site/img/<?php echo $_SESSION['login'][9] ?>" alt="" class="header__img">
                            <div class="header__decs">
                                <span class="desc__hello">Xin chào</span><br>
                                <span class="account__text--1"><?php echo $_SESSION['login'][2] ?></span>
                            </div>
                        </div>
                        <a href="../?c=index" class="header__logout">Trang chủ</a>
                        <a href="#" class="header__logout">Logout</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>