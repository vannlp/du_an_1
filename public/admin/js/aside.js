$(document).ready(() => {
  const li = document.querySelectorAll(".even");
  const ul2 = document.querySelectorAll(".aside__list-2");
  const a2 = document.querySelectorAll(".even>.aside__list-link");
  li.forEach(function (data, index) {
    data.addEventListener("click", () => {
      ul2[index].classList.toggle("active");
      a2[index].classList.toggle("active");
    });
  });
});
