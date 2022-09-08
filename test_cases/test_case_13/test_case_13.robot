*** Settings ***
Library    SeleniumLibrary
Library    Collections

Resource                  ../variable.robot
Resource                  ../products_page_locaters.robot
Resource                  ../product_details_page_locaters.robot
Resource                  ../home_page_locaters.robot
Resource                  ../global_keywords.robot
# Resource                   keywords.robot

Test Setup         Run keywords   Navigate The Website And Verify Home Page is Visible
Test Teardown      Close Browser

*** Test Case ***
Verify Product Quantity In Cart  
    ${all_products_view_button}  Get WebElements   xpath= //div[@class = 'choose']
    Scroll Element Into View   ${all_products_view_button[5]}
    Click Element    ${all_products_view_button[2]}
    Location Should Contain    product_details
    Execute Javascript   document.getElementById('quantity').setAttribute('value','4')
    Click Button   ${add_to_cart_button} 
    Wait Until Element Is Visible   ${view_cart_btn}
    Click Element  ${view_cart_btn}
    ${product_quantity}  Get Text  xpath=//tbody/tr/td[4]
    Should Be Equal As Integers    ${product_quantity}   4
    