*** Settings ***
Resource    ../../Keywords/Pages/Login_Page_Zalando_Keyword.robot


*** Variables ***


*** Keywords ***
User Validate Mens Page Section
    [Documentation]    User Validate Mens Page Section
    Replace Xpath And Wait  ${A_HREF}    ${A_HREF_TITLE}
    Replace Xpath And Click   ${A_HREF}    ${A_HREF_TITLE}
    Replace Xpath And Wait   ${A_HREF}    ${A_HREF_TITLE}
    Navigate To Page    ${MEN_SECTION_PAGE}
    
User Validate Search Functionality In Home Page
    [Documentation]     User Validate Search Functionality In Home Page
    Replace Xpath And Wait     ${INPUT_PLACEHOLDER}   ${SEARCH}
    User Search For Product In Home Page   ${NIKE_SHOE}
    
User Search For Product In Home Page
    [Documentation]     User Search For Product In Home Page
    [Arguments]    ${PRODUCT_NAME}
    Replace Xpath And Input Text    ${INPUT_PLACEHOLDER}   ${SEARCH}     ${PRODUCT_NAME}
    Press Keys    NONE    ENTER
    
User Validate Mens Clothing Section
    [Documentation]    User Validate Mens Clothing Section
    Navigate To Page
