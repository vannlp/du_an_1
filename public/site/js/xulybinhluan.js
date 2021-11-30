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

  function layidSP() {
    const idSP = document.querySelector("#idSP");

    let data = idSP.value;

    return data;
  }

  function xulybinhluan() {
    danhGiaSao();
    const btn_Binh_luan = document.querySelector("#btn-binhluan");

    btn_Binh_luan.addEventListener("click", () => {
      let soSao = laydulieuSao();
      let text = laydulieuText();
      let idSP = layidSP();
      $.get(
        "?c=chitiet&a=binh_luan_ajax",
        {
          soSao: soSao,
          text: text,
          idSP: idSP,
        },
        function (data) {
          const list_danh_gia = document.querySelector(".danhGia-list");
          data = JSON.parse(data);
          console.log(data);
          list_danh_gia.innerHTML = `<div style="text-align: center;"><i class="xoay"></i></div>`;
          setTimeout(() => {
            let html = data.map((value, index) => {
              let arr = [];
              for (let i = 0; i < 5; i++) {
                if (i < value[6]) {
                  arr[i] = "action";
                } else {
                  arr[i] = "";
                }
              }

              return `
              <div class="danhGia-list-item">
                  <div class="danhGia-list-title">
                      <img src="https://vcdn.tikicdn.com/cache/w100/ts/seller/83/e1/c3/2c071fbb04d92608a1dbdf96f7269ca3.jpg.webp" alt="" />
                      <span>${value[9]}</span>
                  </div>
                  <div class="danhGia-list-desc">
                      <div class="product__sao">
                          <i class="fas fa-star ${arr[0]}"></i>
                          <i class="fas fa-star ${arr[1]}"></i>
                          <i class="fas fa-star ${arr[2]} "></i>
                          <i class="fas fa-star ${arr[3]} "></i>
                          <i class="fas fa-star ${arr[4]}"></i>
                      </div>
                      <div class="danhGia-list-noiDung">
                          <span>${value[4]} |</span>
                          <span>${value[5]}</span>
                      </div>
                  </div>
              </div>
              `;
            });

            html = html.join("");
            list_danh_gia.innerHTML = html;
          }, 1000);
        }
      );
    });
  }

  xulybinhluan();
});
