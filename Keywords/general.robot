*** Settings ***
Library    SeleniumLibrary
Library    String
Variables        data/general_data.py
*** Variables ***
${BROWSER}       chrome
${PAGE_URL}      https://www.zalando.com/

${H1_TEXT}          //h1[text() = "replace"]
${INPUT_NAME}       //input[@name = "replace"]
${INPUT_CONTAINS_CLASS}  //input[contains(@class , "replace")]
${INPUT_TYPE}       //input[@type = "replace"]
${IMG_TITLE}        //img[contains(@title , "replace")]
${SPAN_TXT}         //span[text() = "replace"]
${SPAN_TITLE}       //span[@title = "replace"]
${SPAN_CLASS}       //span[@class = "replace"]
${SPAN_CONTAINS_TXT}    //span[contains(text() , "replace")]
${SPAN_CONTAINS_CLASS}  //span[contains(@class , "replace")]
${A_CONTAINS_HREF}    //a[contains(@href , "replace")]


*** Keywords ***
Launch Browser
    [Documentation]    This keyword is used to launch browser of specified type
    Open Browser    ${PAGE_URL}    ${BROWSER}
    
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