window.addEventListener("load", () => {
  function danhGiaSao() {
    const Sao = document.querySelectorAll(".danhGia-sao>i");

    let soSao = 0;
    Sao.forEach((data, index) => {
      data.addEventListener("click", () => {
        soSao = data.dataset.index;
        // console.log(soSao);
        for (let i = 0; i < Sao.length; i++) {
          Sao[i].classList.remove("action");
        }
        for (let i = 0; i <= soSao; i++) {
          Sao[i].classList.add("action");
        }
      });
    });
  }

  function laydulieuSao() {
    const Sao = document.querySelectorAll(".danhGia-sao>i.action");

    let i = 0;
    Sao.forEach((data, index) => {
      i++;
    });
    return i;
  }

  function laydulieuText() {
    const khungText = document.querySelector("#binh-luan");

    let data = khungText.value;

    return data;
  }

  function xulybinhluan() {
    danhGiaSao();
    const btn_Binh_luan = document.querySelector("#btn-binhluan");

    btn_Binh_luan.addEventListener("click", () => {
      let soSao = laydulieuSao();
      let text = laydulieuText();
      $.get(
        "?c=chitiet&a=binh_luan_ajax",
        {
          soSao: soSao,
          text: text,
        },
        function (data) {
          console.log(data);
        }
      );
    });
  }

  xulybinhluan();
});
