$(document).ready(function () {
  $(".danhMuc").slick({
    infinite: true,
    slidesToShow: 6,
    slidesToScroll: 3,
    prevArrow: `<button type="button" class="slick-prev"><</button>`,
    nextArrow: `<button type="button" class="slick-next">></button>`,
    responsive: [
      {
        breakpoint: 770,
        settings: {
          slidesToShow: 4,
        },
      },
      {
        breakpoint: 500,
        settings: {
          slidesToShow: 2,
        },
      },
    ],
  });
});
