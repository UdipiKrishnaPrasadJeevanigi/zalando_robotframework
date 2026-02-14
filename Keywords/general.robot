*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    Keywords/Pages/Address_Page_Zalando_Keyword.robot
Variables        data/general_data.py

*** Variables ***
${BROWSER}       chrome
${PAGE_URL}      https://www.zalando.com/
${BUTTON_TYPE}       //button[@type = "replace"]
${H1_TEXT}          //h1[text() = "replace"]
${INPUT_NAME}       //input[@name = "replace"]
${INPUT_ARIA_LABEL}    //input[contains(@aria-label , "replace")]
${INPUT_CONTAINS_CLASS}  //input[contains(@class , "replace")]
${BUTTON_TEXT}     //button[@text = "replace"]
${INPUT_TYPE}       //input[@type = "replace"]
${IMG_TITLE}        //img[contains(@title , "replace")]
${SPAN_TXT}         //span[text() = "replace"]
${SPAN_TITLE}       //span[@title = "replace"]
${SPAN_CLASS}       //span[@class = "replace"]
${SPAN_CONTAINS_TXT}    //span[contains(text() , "replace")]
${SPAN_CONTAINS_CLASS}  //span[contains(@class , "replace")]
${A_CONTAINS_HREF}    //a[contains(@href , "replace")]
${HOME_URL}      https://www.zalando.com/


*** Keywords ***
Launch Browser
    [Documentation]    Launch browser with specified popup behavior
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-popup-blocking
    Open Browser    ${PAGE_URL}    ${BROWSER}    options=${chrome_options}
    
Click Element Using Javascript
    [Documentation]    Click element using JavaScript with XPath
    [Arguments]    ${xpath}
    ${element}=    Get WebElement    xpath:${xpath}
    Execute Javascript    arguments[0].scrollIntoView(true); arguments[0].click();    ARGUMENTS    ${element}

Replace Xpath And Click
    [Documentation]    Replace Xpath And Wait For Element
    [Arguments]    ${XPATH}  ${NAME}
    ${STR}    Replace String  ${XPATH}  replace  ${NAME}
    Wait Until Element Is Visible    ${STR}     ${TIMEOUT_10S}
    ${RES}     run keyword and return status    Click Element    ${STR}
    IF    '${RES}'==False
        Click Element Using Javascript  ${STR}
    END

Click Shadow DOM Element
    [Arguments]    ${host_selector}    ${input_selector}
    Execute Javascript
    ...    document.querySelector('${host_selector}').shadowRoot.querySelector('${input_selector}').click();

Replace Xpath And Wait
    [Documentation]    Replace Xpath And Wait For Element
    [Arguments]    ${XPATH}  ${NAME}
    ${STR}    Replace String  ${XPATH}  replace  ${NAME}
    Wait Until Element Is Visible    ${STR}     ${TIMEOUT_10S}
    Capture Page Screenshot  
    
Replace Xpath And Input Text
    [Documentation]    Generic Keyword to Input Text
    [Arguments]    ${XPATH}  ${NAME}    ${VAL}
    ${STR}    Replace String  ${XPATH}  replace  ${NAME}
    Wait Until Page Contains Element    ${STR}
    Input Text     ${STR}    ${VAL}
    
Navigate To Page
    [Documentation]    Keyword to Navigate to certain page through url
    [Arguments]    ${PAGE_NAME}
    ${BASE_URL}    Get Location
    ${RES_URL}      Set Variable       ${BASE_URL}/${PAGE_NAME}/
    Go To     ${RES_URL}
    