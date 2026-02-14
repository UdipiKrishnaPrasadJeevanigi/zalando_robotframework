*** Settings ***
Resource    Keywords/Pages/Home_Page_Zalando_Keyword.robot
Test Teardown    Close All Browsers
*** Variables ***


*** Test Cases ***
TC_HomePage_001
     [Documentation]    Describes Test Cases For HomePage Section
    Given User Navigate To Website
    When User Navigate To Specific Country Page  ${UNITED_KINGDOM}
    Then User Navigate Sign In Page
    Then User Validates Types Of Home Page Section
    Then User LogOut From Page

TC_HomePage_002
    [Documentation]    Describe Test Cases For MensPage Section
    Given User Navigate To Website
    When User Navigate To Specific Country Page    ${UNITED_KINGDOM}
    Then User Navigate Sign In Page
    Then User Validate Mens Page Section
#    Then User Validate Mens Clothing Section
#    Then User Validate Filter Functionality For Men Cloth Type
#    Then User LogOut From Page

