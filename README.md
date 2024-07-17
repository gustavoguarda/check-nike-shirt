# Nike Brasil II 2022/23 Shirt Availability Checker

This Bash script checks the availability of the Nike Brasil II 2022/23 Torcedor Pro Men's shirt on the Nike website. If the shirt is available and in the specified size, the script sends an email notification using the Sendinblue API.

## Features

- Checks product availability on the Nike website.
- Verifies if the product is available in the desired size.
- Sends an email notification if the product and size are available.

## Prerequisites

- cURL: Make sure cURL is installed on your system.
- Sendinblue account and API key.
- Valid email address to receive notifications.

## Usage

1. **Set up your environment:**

   Make sure you have `curl` installed and accessible from your terminal. If not, install it using your package manager. For example, on Ubuntu, you can use:
   
   ```bash
   sudo apt-get install curl
   ```

2. **Update the script:**

    Replace the following placeholders in the script with your actual details:

    - api-key with your Sendinblue API key.
    - sender and to email addresses with your desired email addresses.

3. **Run the script:**

    Save the script to a file, for example check_nike_shirt.sh, and give it execute permissions:

    ```bash
    chmod +x check_nike_shirt.sh
    ````

    Then run the script:

    ```bash
    ./check_nike_shirt.sh
    ```
