<div class="listNew">
    <div class="listNew__header">
        <div class="chucNang__header-khung">
            <h3 class="chucNang__header-h3">
                Mã khuyến mãi
            </h3>
        </div>
        <a href="../?c=giamgia&a=index" target="blank" class= "btn btn-primary" style="font-size: 17px">Danh sách</a>
    </div>
    <div class="listNew__main">
        <div class="listNew__item full-width">
            <button class="listNew__btn" type="button">Thêm mã</button>
            <div class="listNew__khung">
                <form action="" enctype="multipart/form-data" method="post" class="tinTuc-wrapper">
                    <div class="form-group">
                   
                        <label for="title">Nhập mã giảm giá</label>
                        <input type="text" placeholder="Nhập mã giảm giá (tối đa 11 ký tự)"name="giam_gia" class="form-control">
            
                    </div>
                    <div class="form-group">
                  
                        <label for="title">Phần trăm giảm giá</label>
                        <input type="number" placeholder="Phần trăm giảm giá"name="PTGG" class="form-control">
            
            
                    </div>
                    <div class="form-group">
                        
                        <label for="title">Ngày bắt đầu</label>
                        <input type="date" placeholder="Nhập ngày kết thúc"name="NBD" class="form-control">
            
                    </div>
                    <div class="form-group">
                        
                        <label for="title">Ngày kết thúc</label>
                        <input type="date" placeholder="Nhập ngày kết thúc "name="NKT" class="form-control">
            
                    </div>
                    
                    <button class= "btn btn-primary" type="submit" name ="btn_submit">Thêm</button>
                </form>
                <div class="alert alert-success">
                   
                </div>
            </div>
        </div>
    </div>
</div>
<script src="<?= URL_PUBLIC ?>admin/js/thuPhong.js"></script>
