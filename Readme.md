# Zalando Robot Framework Test Automation

This project contains automated test cases for the Zalando website using Robot Framework and Selenium.

## Project Structure

```
PythonProject/
├── Keywords/
│   ├── general.robot                    # Common keywords and utilities
│   └── Pages/
│       ├── Address_Page_Zalando_Keyword.robot
│       ├── Articles_Page_Zalando_Keyword.robot
│       ├── Details_Page_Zalando_Keyword.robot
│       ├── FAQ_Page_Zalando_Keyword.robot
│       ├── Gift_Card_Page_Zalando_Keyword.robot
│       ├── Home_Page_Zalando_Keyword.robot
│       ├── Login_Page_Zalando_Keyword.robot
│       ├── My_Accounts_Zalando_Keyword.robot
│       ├── NewsLetter_Page_Zalando_Keyword.robot
│       ├── Orders_Page_Zalando_Keyword.robot
│       ├── Return_Page_Zalando_Keyword.robot
│       └── WardrobeList_Page_Zalando_Keyword.robot
├── data/
│   └── general_data.py                  # Test data and configuration
├── tests/
│   └── UK_Country/
│       ├── Home_Page_Zalando_Test.robot
│       └── LoginTest.robot
├── Library/                             # Custom Python libraries
├── requirements.txt                     # Python dependencies
├── robot.yaml                           # Robot Framework configuration
└── .gitignore                          # Git ignore patterns
```

## Prerequisites

- Python 3.8+
- Google Chrome or Mozilla Firefox

## Installation

1. Install Python dependencies:
```bash
pip install -r requirements.txt
```

## Running Tests

Run all tests:
```bash
robot tests/
```

Run specific test file:
```bash
robot tests/UK_Country/LoginTest.robot
```

Run with specific browser:
```bash
robot --variable BROWSER:firefox tests/
```

Run with output to specific directory:
```bash
robot --outputdir results tests/
```

## Test Cases

### LoginTest.robot
- `TC_LoginPage_01`: Validates login functionality

### Home_Page_Zalando_Test.robot
- `TC_HomePage_001`: Validates homepage sections and login flow
- `TC_HomePage_002`: Validates men's page section

## Clothing Types

- Men Clothing - https://www.zalando.co.uk/men-home/
- Women Clothing - https://www.zalando.co.uk/women-home/
- Kids Clothing - https://www.zalando.co.uk/kids-home/

## Pages

- My Accounts Page - https://www.zalando.co.uk/myaccount/
- Orders Page - https://www.zalando.co.uk/myaccount/orders
- Details Page - https://www.zalando.co.uk/myaccount/details/
- Articles Page - https://www.zalando.co.uk/returns/articles
- Return Page - https://www.zalando.co.uk/returns/your-returns
- Address Page - https://www.zalando.co.uk/myaccount/addresses/
- Gift Card Page - https://www.zalando.co.uk/myaccount/giftvouchers/
- NewsLetter Page - https://www.zalando.co.uk/messages
- Wardrobe List Page - https://www.zalando.co.uk/wardrobe/lists/owned/
- FAQ Page - https://www.zalando.co.uk/faq

## Sections

- Clothing
- Shoes
- Accessories
- Sports
- Designer
- Streetwear
- Brands
- Sale

## Configuration

Edit `data/general_data.py` to modify:
- Timeouts
- URLs
- Test credentials
- Page elements

## Notes

- Tests use Chrome browser by default
- Screenshots are captured on each action
- Implicit waits are configured via timeout variables
