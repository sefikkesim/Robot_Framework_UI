*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    String

Resource                  ../variable.robot
Resource                  ../products_page_locaters.robot
Resource                  ../product_details_page_locaters.robot
Resource                  ../home_page_locaters.robot
Resource                  ../global_keywords.robot
Resource                   keywords.robot

Test Setup         Run keywords   Navigate The Website And Verify Home Page is Visible
# Test Teardown      Close Browser

*** Test Case ***
Add Products in Cart 
    Navigate To Product Page  
    Hover Over First Product And Click Add To Cart Button
    Click Continue Shopping Button
    Hover Over Second Product And Click Add To Cart Button
    Click View Cart Button
    Verify Both Products Are Added To Cart 
    Verify Prices Of Products
    Verify Quantities Of Products
    Verify Total Prices Of Products