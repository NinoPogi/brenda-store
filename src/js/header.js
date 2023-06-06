document.addEventListener("DOMContentLoaded", function () {
  const headerContainer = document.getElementById("header-container");

  fetch("/src/components/header.html")
    .then((response) => response.text())
    .then((data) => {
      headerContainer.innerHTML = data;

      const navbar = document.querySelector("[data-navbar]");
      const navToggler = document.querySelector("[data-nav-toggler]");

      navToggler.addEventListener("click", function () {
        navbar.classList.toggle("active");
      });

      const header = document.querySelector("[data-header]");

      window.addEventListener("scroll", function () {
        header.classList[this.scrollY > 50 ? "add" : "remove"]("active");
      });
    });
});
