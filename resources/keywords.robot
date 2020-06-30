*** Settings ***
Library    OperatingSystem
Library    RPA.Browser
Library    ExampleLibrary
Variables   variables.py

# +
*** Keywords ***
Store the latest price by script "${script_name}"
    Open Google Finance Home Page    ${script_name}
    Read Prices    ${script_name}
    [Teardown]    Close Browser 
    
Open Google Finance Home Page
    [Arguments]    ${script_name}
    Open Available Browser    ${FINANCE_URL}/${script_name}
    
Read Prices
    [Arguments]    ${script_name}
    ${price_locator}=    Get price locator
    Wait Until Element Is Visible    ${price_locator}
    ${price}=    Get WebElement   ${price_locator}
    ${directory}=    Get price directory    ${script_name}
    Create Directory    ${directory}
    ${text_file}=    Set Variable    ${directory}/price-${script_name}.txt
    ${text}=    Set Variable    ${price.text}
    Create File    ${text_file}    ${text}
    
Get price directory
    [Arguments]    ${script_name}
    [Return]    ${CURDIR}/../output/price/${script_name}
    
Get price locator
    [Return]    xpath://*[@id="ltpid"]
# -




