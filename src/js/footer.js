document.addEventListener("DOMContentLoaded", function () {
  const footerContainer = document.getElementById("footer-container");

  fetch("/src/components/footer.html")
    .then((response) => response.text())
    .then((data) => {
      footerContainer.innerHTML = data;
    });
});
