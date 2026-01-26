*** Settings ***
Resource    Keywords/general.robot
*** Variables ***
${LOGIN_PAGE}    

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
    Replace Xpath And Wait  ${A_CONTAINS_HREF}    ${MY_ACCOUNT}
    Capture Page Screenshot
    Replace Xpath And Click  ${A_CONTAINS_HREF}    ${MY_ACCOUNT}
    Replace Xpath And Wait   ${H1_TEXT}    ${SIGN_IN_OR_REGISTER}
    Replace Xpath And Input Text    ${INPUT_NAME}    ${USERNAME}    ${USERNAME_VAL}
    Capture Page Screenshot
    ${RES}    run keyword and ignore error    Replace Xpath And Wait   ${H1_TEXT}    ${REGISTER}
    IF    '${RES}'==True
        User Register The Account
    ELSE
         Replace Xpath And Input Text    ${INPUT_NAME}    ${PASSWORD}    ${PASSWORD_VAL}
    END

