window.addEventListener("load", () => {
  function soSao() {
    const Sao = document.querySelectorAll(".danhGia-sao>i");

    Sao.forEach((data, index) => {
      let soSao = data.dataset.index;
    });

    return soSao;
  }

  function xulybinhluan() {
    const btn_Binh_luan = document.querySelector("#btn-binhluan");

    btn_Binh_luan.addEventListener("click", () => {
      console.log(soSao());
    });
  }

  xulybinhluan();
});
