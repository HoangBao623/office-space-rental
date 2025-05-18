const wrapper = document.querySelector(".wrapper");
const eye = document.getElementById("eye");
const eye2 = document.getElementById("eye2");
const passwordLogin = document.getElementById("password");
const passwordRegis = document.getElementById("password_signup");
const passwordRegis2 = document.getElementById("password_signup2");
// const passwordRegis2 = document.getElementById("password_signup2");
const registerLink = document.querySelector(".register-link");
const loginLink = document.querySelector(".login-link");
const loginButton = document.getElementById("login-button");

let state = false;

function change(e) {
  e.stopPropagation();
  wrapper.classList.toggle("active");
}

function popup(e) {
  e.stopPropagation();
  wrapper.classList.toggle("popup");
}

function showPassword(e) {
  e.stopPropagation();
  if (!state) {
    passwordLogin.setAttribute("type", "text");
    passwordRegis.setAttribute("type", "text");
    state = true;
  } else {
    passwordLogin.setAttribute("type", "password");
    passwordRegis.setAttribute("type", "password");
    state = false;
  }
}

function showPassword2(e) {
  e.stopPropagation();
  if (!state) {
    passwordLogin.setAttribute("type", "text");
    passwordRegis2.setAttribute("type", "text");
    state = true;
  } else {
    passwordLogin.setAttribute("type", "password");
    passwordRegis2.setAttribute("type", "password");
    state = false;
  }
}
// Hàm hiển thị/ẩn mật khẩu
function showPassword(event) {
  const input = event.target.closest('.input').querySelector('input');
  if (input.type === 'password') {
    input.type = 'text';
    event.target.setAttribute('name', 'eye-off-outline');
  } else {
    input.type = 'password';
    event.target.setAttribute('name', 'eye-outline');
  }
}

function showPassword2(event) {
  showPassword(event);
}
