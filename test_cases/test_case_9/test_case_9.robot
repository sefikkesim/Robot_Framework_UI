*** Settings ***
Library    Selenium2Library
Library    Collections


Resource                  ../variable.robot
Resource                  ../products_page_locaters.robot
Resource                  ../product_details_page_locaters.robot
Resource                  ../home_page_locaters.robot
Resource                  ../global_keywords.robot
Resource                   keywords.robot

Test Setup         Run keywords   Navigate The Website And Verify Home Page is Visible
Test Teardown      Close Browser

*** Test Case ***
Search Product
    Navigate To Product Page and Verify The Page Is Loaded
    Search Product and Verify Results Are Visible
    Verify All The Products Related To Search Are Visible