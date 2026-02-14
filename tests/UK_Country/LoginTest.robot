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
    User Navigate Sign In Page
    User LogOut From Page