*** Settings ***
Library    Selenium2Library 


Resource                  ../variable.robot
Resource                  ../products_page_locaters.robot
Resource                  ../product_details_page_locaters.robot
Resource                  ../home_page_locaters.robot
Resource                  ../global_keywords.robot
Resource                   keywords.robot

Test Setup         Run keywords   Navigate The Website And Verify Home Page is Visible
Test Teardown      Close Browser

*** Test Case ***
Verify All Products and Product Detail Page
    Navigate To Product Page and Verify The Page Is Loaded
    Click on View Product link of First Product 
    Verify Product Details 