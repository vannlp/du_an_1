$(document).ready(() => {
  function xulygiohang() {
    const btn_mua = document.querySelector("#btn-mua");
    const idSP = document.querySelector("#idSP");
    const soluong = document.querySelector("#soLuong-input");
    const add_gio_hang = document.querySelector(".add_gio_hang");
    const sl_con_lai = $("#sp-con-lai");
    const soLuong_input = $("#soLuong-input");

    $(".product__btn-mua").click(function () {
      let sl = Number(sl_con_lai.text());
      let input = Number(soLuong_input.val());
      console.log(sl);
      console.log(input);
      if (sl < input) {
        $(".product__btn-mua").attr("id", "ok");
        alert("Không được mua hơn số lượng sản phẩm đang có");
      } else if (input > 10) {
        alert("Chỉ mua tối đa 10 sản phẩm");
      } else {
        let id_sp = idSP.value;

        let so_luong = soluong.value;
        $.get(
          "?c=giohang&a=add_gio_hang",
          {
            id: id_sp,
            soluong: so_luong,
          },
          function (data) {
            add_gio_hang.classList.add("action");
            setTimeout(() => {
              add_gio_hang.classList.remove("action");
            }, 2000);
          }
        );
      }
    });
  }

  xulygiohang();
});
