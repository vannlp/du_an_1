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
window.addEventListener("load", () => {
  xulyImg();
});
