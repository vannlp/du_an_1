$(document).ready(() => {
  function xulygiohang() {
    const btn_mua = document.querySelector("#btn-mua");
    const idSP = document.querySelector("#idSP");
    const soluong = document.querySelector("#soLuong-input");
    const add_gio_hang = document.querySelector(".add_gio_hang");

    let id_sp = idSP.value;
    let so_luong = soluong.value;

    btn_mua.addEventListener("click", () => {
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
    });
  }

  xulygiohang();
});
