*** Settings ***
Resource    Keywords/general.robot
*** Variables ***
${SHADOW_HOST_CSS_SELECTOR}    button[data-testid="uc-accept-all-button"]
*** Keywords ***
User Navigate To Website
    [Documentation]    User Navigate to website
    Launch Browser
    Replace Xpath And Wait    ${IMG_TITLE}     ${PAGE_TITLE}
    Capture Page Screenshot

User Navigate To Specific Country Page
    [Documentation]    User Navigate To Specific Country Page
    [Arguments]    ${COUNTRY_VAL}
    Replace Xpath And Wait    ${SPAN_TXT}    ${COUNTRY_VAL}
    Replace Xpath And Click   ${SPAN_TXT}    ${COUNTRY_VAL}
    Capture Page Screenshot    

User Register The Account
    [Documentation]    User Register The Account


User Navigate Sign In Page
    [Documentation]    User Navigate To Sign In Page
    Sleep    ${TIMEOUT_10S}
    ${ACCEPT_BTN_RES}    Replace String    ${BUTTON_TEXT}  replace   ${ACCEPT_ALL_BTN}
    Click Shadow DOM Element    ${SHADOW_HOST}    ${SHADOW_HOST_CSS_SELECTOR}
    Navigate To Page    ${MY_ACCOUNT}
    Capture Page Screenshot
    Replace Xpath And Wait   ${H1_TEXT}    ${SIGN_IN_OR_REGISTER}
    Replace Xpath And Input Text    ${INPUT_NAME}    ${USERNAME}    ${USERNAME_VAL}
    Capture Page Screenshot
    Replace Xpath And Click     ${BUTTON_TYPE}    ${SUBMIT}
    Capture Page Screenshot
    Replace Xpath And Wait    ${INPUT_ARIA_LABEL}    ${PASSWORD}
    Replace Xpath And Input Text    ${INPUT_ARIA_LABEL}    ${PASSWORD}    ${PASSWORD_VAL}
    Replace Xpath And Click     (${SPAN_TXT})[last()]    ${SIGN_IN}

