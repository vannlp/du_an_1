<style>
    .addimg__wrapper {
        background-color: #fff;
        margin: 20px 0;
        padding: 20px;
    }

    .table {
        width: 100%;
        border: 1px solid #ccc;
    }

    .table>tbody>tr>td>img {
        width: 100px;
    }
</style>
<div class="container">
    <section class="addimg__wrapper">
        <h2>Quản lý hình ảnh</h2>
        <form action="#" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="">Tải ảnh</label>
                <input type="file" name="img" class="form-control" id="">
            </div>
            <button name="btn-submit" class="button button--blue">Tải lên</button>

            <h4><?= $data['thong_bao'] ?></h4>
        </form>

        <table class="table" border="1">
            <thead>
                <tr>
                    <th>Tên ảnh</th>
                    <th>Ảnh</th>
                </tr>
            </thead>
            <tbody>
                <?php
                foreach ($data['dataImg'] as $value) {
                    echo '
                    <tr>
                        <td>' . $value[1] . '</td>
                        <td>
                            <img src="' . URL_WEB . '/public/site/img/' . $value[1] . '"/>
                        </td>
                    </tr>
                    ';
                }
                ?>
            </tbody>
        </table>
    </section>
</div>