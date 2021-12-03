$(document).ready(() => {
  $("#form-dk").validate({
    onfocusout: false,
    onkeyup: false,
    onclick: false,
    rules: {
      tenDN: {
        required: true,
        minlength: 8,
      },
      matkhau: {
        required: true,
        minlength: 8,
      },
      matkhau1: {
        equalTo: "#mat_khau",
        required: true,
        minlength: 8,
      },
      hoten: {
        required: true,
        minlength: 8,
      },
      email: {
        required: true,
        minlength: 8,
        email: true,
      },
    },
    messages: {
      hoten: {
        required: "Bắt buộc nhập",
        minlength: "Hãy nhập tối thiểu 8 ký tự",
      },
      email: {
        required: "Bắt buộc nhập",
        minlength: "Hãy nhập tối thiểu 8 ký tự",
        email: "Nhập đúng định dạng email",
      },
      tenDN: {
        required: "Bắt buộc nhập tên đăng nhập",
        minlength: "Hãy nhập tối thiểu 8 ký tự",
      },
      matkhau: {
        required: "Bắt buộc nhập mật khẩu",
        minlength: "Hãy nhập tối thiểu 8 ký tự",
      },
      matkhau1: {
        equalTo: "nhập sai vui lòng nhập lại",
        required: "Bắt buộc nhập",
        minlength: "Hãy nhập tối thiểu 8 ký tự",
      },
    },
  });
});
