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
Verify Subscription In Home 
    Scroll Down To Footer and Verify Subscription Text Is visible
    Input Email Address in Input And Click Arrow button
    Verify Subscription Success Message Is Visible
