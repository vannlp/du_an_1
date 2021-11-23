window.addEventListener("load", () => {
  function start() {
    // xulyImg();
    xulyBtn();
    danhGiaSao();
  }

  function xulyImg() {
    const bigImg = document.querySelector("#big-img");
    const smallImgs = document.querySelectorAll(".productImg__small img");
    var i = 0;

    bigImg.src = smallImgs[0].src;
    smallImgs[0].classList.add("action");

    smallImgs.forEach(function (data, index) {
      data.addEventListener("click", function () {
        bigImg.src = this.src;
        smallImgs[i].classList.remove("action");
        i = index;
        this.classList.add("action");
      });
    });
  }

  function xulyBtn() {
    const btnTrai = document.querySelectorAll(
      ".btn-soLuong button:first-child"
    );
    const btnPhai = document.querySelectorAll(".btn-soLuong button:last-child");
    const inputSo = document.querySelectorAll(".btn-soLuong input");
    var inputSoValue = [];

    for (let i = 0; i < inputSo.length; i++) {
      inputSoValue[i] = inputSo[i].value;

      function capnhapInput() {
        if (inputSoValue[i] == 1) {
          btnTrai[i].setAttribute("disabled", "true");
        } else {
          btnTrai[i].removeAttribute("disabled");
        }
      }

      capnhapInput();

      btnTrai[i].addEventListener("click", () => {
        inputSoValue[i]--;
        inputSo[i].value = inputSoValue[i];
        capnhapInput();
      });

      btnPhai[i].addEventListener("click", () => {
        inputSoValue[i]++;
        inputSo[i].value = inputSoValue[i];
        capnhapInput();
      });
    }
  }

  function danhGiaSao() {
    const Sao = document.querySelectorAll(".danhGia-sao>i");

    Sao.forEach((data, index) => {
      data.addEventListener("mousemove", () => {
        let soSao = data.dataset.index;
        for (let i = 0; i < Sao.length; i++) {
          Sao[i].classList.remove("action");
        }
        for (let i = 0; i <= soSao; i++) {
          Sao[i].classList.add("action");
        }
      });
    });
  }

  start();
});
