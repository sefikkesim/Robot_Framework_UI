*** Settings ***

Library    Selenium2Library 

Resource                  ../variable.robot
Resource                  ../test_data.robot
Resource                  ../home_page_locaters.robot
Resource                  ../global_keywords.robot
Resource                   keywords.robot

Test Setup         Run keywords   Navigate The Website And Verify Home Page is Visible
Test Teardown      Close Browser

*** Test Case ***
Verify Test Cases Page
    Navigate To Test Cases Page And Verify That Landed To Test Cases Page