*** Settings ***
Resource    Keywords/Pages/Login_Page_Zalando_Keyword.robot


*** Variables ***


*** Keywords ***
User Validate Mens Page Section
    [Documentation]    User Validate Mens Page Section
    Navigate To Page    ${MEN_SECTION_PAGE}
