*** Settings ***
Resource    Keywords/Pages/Login_Page_Zalando_Keyword.robot


*** Variables ***


*** Keywords ***
User Validate Mens Page Section
    [Documentation]    User Validate Mens Page Section
    Replace Xpath And Wait  ${A_HREF}    ${A_HREF_TITLE}
    Replace Xpath And Click   ${A_HREF}    ${A_HREF_TITLE}
    Replace Xpath And Wait   ${A_HREF}    ${A_HREF_TITLE}
    Navigate To Page    ${MEN_SECTION_PAGE}
