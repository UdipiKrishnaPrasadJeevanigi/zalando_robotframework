*** Settings ***
Library    SeleniumLibrary
Resource    Keywords/loginpage_keyword.robot
*** Variables ***
${USERNAME}    "udipikrishna"
${PASSWORD}    "ukp@362k1"

*** Test Cases ***
TC_Login_01
    [Documentation]    Login Page TestCase File
    User Navigate To Website
    User Navigate To Specific Country Page  ${UNITED_KINGDOM}
    User Navigate Sign In Page
    Close Browser