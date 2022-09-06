*** Settings ***
Library    SeleniumLibrary

Resource                  ../variable.robot
Resource                  ../products_page_locaters.robot
Resource                  ../product_details_page_locaters.robot
Resource                  ../home_page_locaters.robot
Resource                  ../global_keywords.robot
Resource                   keywords.robot

Test Setup         Run keywords   Navigate The Website And Verify Home Page is Visible
Test Teardown      Close Browser

*** Test Case ***
Verify Subscription In Cart Page
    Navigate To Cart Page
    Scroll Down To Footer And Verify Subscription Text
    Input Email Address in Input And Click Arrow button
    Verify Subscription Success Message Is Visible
