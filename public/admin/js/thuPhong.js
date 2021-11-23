window.addEventListener("load", () => {
  const listNewKhung = document.querySelectorAll(".listNew__khung");
  const listNewBtn = document.querySelectorAll(".listNew__btn");

  listNewBtn.forEach((data, index) => {
    data.addEventListener("click", function () {
      listNewKhung[index].classList.toggle("active");
      this.classList.toggle("active");
    });
  });
});
