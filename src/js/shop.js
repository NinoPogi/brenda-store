axios
  .get("http://localhost:8080/products")
  .then((response) => {
    const products = response.data;
    const productList = document.getElementById("product-grid");

    // Generate product cards
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

            <a href="#" class="btn product-btn">
              <ion-icon name="bag"></ion-icon>

              <span class="span">Add To Cart</span>
            </a>
          </div>

          <div class="card-content">
            <h3 class="h4 title">
              <a href="#" class="card-title">${product.name}</a>
            </h3>

            <span class="price">₱${product.price}</span>
          </div>
        </div>
      `;

      productCard.innerHTML = productCardContent;
      productList.appendChild(productCard);
    });
  })
  .catch((error) => {
    console.log(error);
  });
