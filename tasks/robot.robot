*** Settings ***
Documentation     Web scraper robot. Stock Price Checks.
Resource          keywords.robot
Variables         variables.py

*** Tasks ***
Store the latest price by given script name
    Store the latest price by script "${SCRIPT_NAME}"
