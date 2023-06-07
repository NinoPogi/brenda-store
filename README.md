# Brenda Store

Brenda Store is an e-commerce website for selling various products.

## Features

- Hero Page
- Shop Page
- About Page
- Browse products
- Add products to the shopping cart
- Manage quantities and remove items from the cart

## Installation

To run the Brenda Store project locally, follow the steps below:

1. Install [Node.js](https://nodejs.org) on your machine. Node.js is required to run the development server and manage project dependencies.

2. Install [WAMP](https://sourceforge.net/projects/wampserver/) (Windows, Apache, MySQL, PHP) or any other local server environment of your choice. This is needed to serve the PHP files and interact with the backend.

3. Start the WAMP server and ensure that the Apache and MySQL services are running.

4. Navigate to the project directory:

   ```bash
   cd brenda-store
   ```

5. Create an `.env` file in the project's root directory. You can use a text editor to create this file.

6. Add the following content to the `.env` file:

   ```plaintext
   MYSQL_HOST="localhost"
   MYSQL_PORT="8889"  # Update this if your MySQL server is running on a different port
   MYSQL_USER="root"
   MYSQL_PASSWORD="root"
   MYSQL_DB="brenda_store"
   ```

   Make sure to update the values accordingly based on your local MySQL server configuration.

7. Import the database:

   - Open your preferred MySQL administration tool (e.g., phpMyAdmin).
   - Create a new database named `brenda_store`.
   - Import the `brenda-store.sql` file located in the project's root directory into the `brenda_store` database. This file contains the necessary database structure and sample data.

8. Install the project dependencies using npm:

   ```bash
   npm install
   ```

9. Update the server configuration:

   - Open the `.env` file located in the project's root directory.
   - Ensure the MySQL connection details (host, port, user, password, and database) match the values specified in the `.env` file.

10. Start the development server:

    ```bash
    npm run start
    ```

    This will start the server and host the Brenda Store website at `http://localhost:5173`.

11. Open your web browser and visit `http://localhost:5173` to access the Brenda Store website.

Now you should be able to run the Brenda Store project locally on your machine. If you encounter any issues, make sure all the dependencies are properly installed and configured.

## Author

The Brenda Store project is developed by: 

Kiel Andrea Basco
Niño Immanoel Bautista

If you have any questions or suggestions, please feel free to reach out.
