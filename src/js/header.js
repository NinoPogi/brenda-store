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

      const cartButton = document.querySelector("#cart-btn");
      const cartBar = document.querySelector("[cart]");
      const cartClose = document.querySelector("#cart-close");

      cartButton.addEventListener("click", function () {
        cartBar.classList.add("active");
      });

      cartClose.addEventListener("click", function () {
        cartBar.classList.remove("active");
      });

      if (window.location.pathname.includes("shop.html")) {
        axios
          .get("http://localhost:8080/products")
          .then((response) => {
            const products = response.data;
            renderProducts(products);
          })
          .catch((error) => {
            console.log(error);
          });
      }
      if (window.location.pathname.includes("index.html")) {
        axios
          .get("http://localhost:8080/featured")
          .then((response) => {
            const featured = response.data;
            renderProducts(featured);
          })
          .catch((error) => {
            console.log(error);
          });
      }

      function renderProducts(products) {
        const productList = document.getElementById("product-grid");

        products.forEach((product) => {
          const productCard = document.createElement("li");

          const productCardContent = `
      <div class="product-card text-center">
        <div class="card-banner">
          <figure
            class="product-banner img-holder"
            style="--width: 448; --height: 470"
          >
            <img
              src="${product.image}"
              width="300"
              height="300"
              loading="lazy"
              alt="${product.name}"
              class="img-cover"
            />
          </figure>

          <a class="btn product-btn">
            <ion-icon name="bag"></ion-icon>

            <span class="span">Add To Cart</span>
          </a>
        </div>

        <div class="card-content">
          <h3 class="h4 title">
            <a href="" class="card-title">${product.name}</a>
          </h3>

          <span class="price">₱${product.price}</span>
        </div>
      </div>
    `;

          productCard.innerHTML = productCardContent;
          productList.appendChild(productCard);
        });
        addToCart(products);
      }

      function addToCart(products) {
        const addToCartButtons = document.getElementsByClassName("product-btn");
        const storedCart = sessionStorage.getItem("cart");
        const cart = storedCart ? JSON.parse(storedCart) : [];

        const isCartPopulated = cart.length > 0;

        for (let index = 0; index < addToCartButtons.length; index++) {
          const button = addToCartButtons[index];
          button.addEventListener("click", function () {
            const product = products[index];
            const existingItem = cart.find((item) => item.id === product.id);

            if (existingItem) {
              existingItem.quantity += 1;
            } else {
              cart.push({
                id: product.id,
                name: product.name,
                price: product.price,
                image: product.image,
                quantity: 1,
              });
            }

            sessionStorage.setItem("cart", JSON.stringify(cart));
            renderCart(cart);
          });

          if (isCartPopulated) {
            button.disabled = true;
          }
        }
        renderCart(cart);

        const checkOutButton = document.querySelector(".btn-checkout");
        checkOutButton.addEventListener("click", function () {
          alert("OK");
        });
      }

      function renderCart(cart) {
        const cartContent = document.querySelector(".cart-content");
        const cartLengthText = document.getElementById("cart-length");
        const totalElement = document.querySelector(".total-price");
        const emptyCartText = document.createElement("div");
        emptyCartText.classList.add("empty-cart-text");
        emptyCartText.textContent = "Your cart is empty.";

        cartContent.innerHTML = "";

        if (cart.length === 0) {
          cartContent.appendChild(emptyCartText);
          cartLengthText.textContent = "(0)";
          totalElement.textContent = "₱0";
        } else {
          cart.map((item, index) => {
            const cartBox = document.createElement("div");
            cartBox.classList.add("cart-box");

            const image = document.createElement("img");
            image.src = item.image;
            image.alt = "";
            image.classList.add("cart-img");
            cartBox.appendChild(image);

            const detailBox = document.createElement("div");
            detailBox.classList.add("detail-box");

            const productTitle = document.createElement("div");
            productTitle.classList.add("cart-product-title");
            productTitle.textContent = item.name;
            detailBox.appendChild(productTitle);

            const productPrice = document.createElement("div");
            productPrice.classList.add("cart-product-price");
            productPrice.textContent = "₱" + item.price;
            detailBox.appendChild(productPrice);

            const quantityInput = document.createElement("input");
            quantityInput.type = "number";
            quantityInput.min = "1";
            quantityInput.value = item.quantity;
            quantityInput.classList.add("cart-quantity");
            detailBox.appendChild(quantityInput);

            cartBox.appendChild(detailBox);

            const trashButton = document.createElement("button");
            trashButton.classList.add("cart-trash");
            trashButton.dataset.index = index;

            const trashIcon = document.createElement("ion-icon");
            trashIcon.name = "trash";

            trashButton.appendChild(trashIcon);
            cartBox.appendChild(trashButton);

            cartContent.appendChild(cartBox);
          });
          const removeItemButtons =
            document.getElementsByClassName("cart-trash");
          for (let index = 0; index < removeItemButtons.length; index++) {
            const button = removeItemButtons[index];
            button.addEventListener("click", function (event) {
              removeItem(event, cart);
            });
          }

          const quantityInputs =
            document.getElementsByClassName("cart-quantity");
          for (let i = 0; i < quantityInputs.length; i++) {
            const input = quantityInputs[i];
            input.addEventListener("change", function (event) {
              quantityChanged(event, cart);
            });
          }

          if (cartContent.contains(emptyCartText)) {
            cartContent.removeChild(emptyCartText);
          }

          updateTotal();
          renderCartLength();
        }
      }

      function renderCartLength() {
        const cartLengthText = document.getElementById("cart-length");
        const cartLength = document.getElementsByClassName("cart-box").length;

        cartLengthText.classList.add("cart-length-animation");

        setTimeout(() => {
          cartLengthText.classList.remove("cart-length-animation");
        }, 400);

        cartLengthText.textContent = `(${cartLength})`;
      }

      function removeItem(event, cart) {
        const index = event.target.dataset.index;
        cart.splice(index, 1);
        sessionStorage.setItem("cart", JSON.stringify(cart));
        renderCart(cart);
      }

      function quantityChanged(event, cart) {
        const selected = event.target.parentElement;
        const name =
          selected.getElementsByClassName("cart-product-title")[0].innerHTML;
        const product = cart.find((item) => item.name === name);
        if (product) {
          product.quantity = parseInt(event.target.value);
        }
        sessionStorage.setItem("cart", JSON.stringify(cart));
        updateTotal();
      }
    });

  function updateTotal() {
    const cartContent = document.getElementsByClassName("cart-content")[0];
    const cartBoxes = cartContent.getElementsByClassName("cart-box");
    let total = 0;

    if (cartBoxes.length === 0) {
      total = 0;
    } else {
      for (let i = 0; i < cartBoxes.length; i++) {
        const cartBox = cartBoxes[i];
        const priceElement =
          cartBox.getElementsByClassName("cart-product-price")[0];
        const quantityElement =
          cartBox.getElementsByClassName("cart-quantity")[0];
        const price = parseFloat(priceElement.innerText.replace("₱", ""));
        const quantity = quantityElement.value;
        total = Number(total) + Number(price) * Number(quantity);
      }
    }

    document.getElementsByClassName("total-price")[0].innerText = "₱" + total;
  }
});
