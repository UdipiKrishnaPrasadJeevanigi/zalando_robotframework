*** Settings ***
Library    SeleniumLibrary
Resource    Keywords/Pages/Login_Page_Zalando_Keyword.robot
*** Variables ***

*** Test Cases ***
TC_LoginPage_01
    [Documentation]    Login Page TestCase File
    [Tags]    TC_01
    User Navigate To Website
    User Navigate To Specific Country Page  ${UNITED_KINGDOM}
    User Navigate Sign In Page    ${USERNAME_VAL}    ${PASSWORD_VAL}
    User LogOut From Page

TC_LoginPage_02
    [Documentation]    Login Test With Valid Credentials
    [Tags]    TC_02
    User Navigate To Website
    User Navigate To Specific Country Page  ${UNITED_KINGDOM}
    User Login With Valid Credentials
    User LogOut From Page

TC_LoginPage_03
    [Documentation]    Login Test With Invalid Credentials
    [Tags]    TC_03
    User Navigate To Website
    User Navigate To Specific Country Page  ${UNITED_KINGDOM}
    User Login With Invalid Credentials
    User LogOut From Page
