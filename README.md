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

4. Import the database:

   - Open your preferred MySQL administration tool (e.g., phpMyAdmin).
   - Create a new database named `brenda_store`.
   - Import the `brenda-store.sql` file located in the project's root directory into the `brenda_store` database. This file contains the necessary database structure and sample data.


5. Navigate to the project directory:

   ```bash
   cd brenda-store
   ```

6. Change the `.env` file in the project's root directory. You can use a text editor to change this file.

7. Edit the following content to the `.env` file:

   ```plaintext
   MYSQL_HOST="localhost"
   MYSQL_PORT="3306" 
   MYSQL_USER="root"
   MYSQL_DB="brenda_store"
   ```

   Make sure to update the values accordingly based on your local MySQL server configuration.

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

**Optional:** If you are using Visual Studio Code, you can enhance your development experience by installing the Live Server extension by Ritwick Dey. Live Server allows you to see the changes you make to your HTML, CSS, and JavaScript code instantly without manually refreshing the browser.

To install Live Server in Visual Studio Code, follow these steps:

Open Visual Studio Code.

Go to the Extensions view by clicking on the square icon in the left sidebar or by pressing **Ctrl+Shift+X** (Windows/Linux) or **Cmd+Shift+X** (Mac).

Search for "Live Server" in the Extensions view search bar.

Click on the "Live Server" extension by Ritwick Dey.

Click the "Install" button to install the extension.

After the installation is complete, you should see a "Go Live" button in the bottom-right corner of the Visual Studio Code window.

Click on the "Go Live" button to start the Live Server.

The Live Server will automatically open the Brenda Store website in your default web browser and provide you with a URL to access it. Whenever you make changes to your code, the browser will automatically refresh to reflect those changes.

Now you should be able to run the Brenda Store project locally on your machine. If you encounter any issues, make sure all the dependencies are properly installed and configured.

## Author

The Brenda Store project is developed by: 

Kiel Andrea Basco
Niño Immanoel Bautista

If you have any questions or suggestions, please feel free to reach out.
