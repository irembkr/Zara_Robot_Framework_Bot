
# Zara Robot Framework Bot 🤖🛍️💅🌸🌺

This project automates the process of shopping on the [Zara](https://www.zara.com/tr/) e-commerce website using **Robot Framework**, **Selenium**, and **Python** (on Firefox).  
It simulates a user journey that selects a predefined dress in size **S**, adds it to the cart, logs in, and proceeds to checkout — built to help in fast purchase scenarios like limited stock or flash sales.

## 🔍 What It Does

- Navigates to Zara's homepage, accepts cookies
- Opens the main menu and navigates to **Dresses**
- Selects a predefined dress (by name or URL)
- Selects **Size S** (my size)
- Adds the product to the shopping cart
- Views the cart and proceeds to checkout
- Logs in using provided credentials
- Reaches the payment screen, ready for final confirmation

## 🧰 Technologies Used

- Robot Framework
- SeleniumLibrary
- Python
- Firefox WebDriver (tested on Mozilla Firefox)

## ▶️ Getting Started

1. **Clone the repository:**
   ```bash
   git clone https://github.com/irembkr/ZaraRobotFrameworkBot.git
   cd ZaraRobotFrameworkBot
2. **Install Dependencies**
   ```bash
   pip install -r requirements.txt
3. **Run the Bot**
   ```bash
   robot tests/
