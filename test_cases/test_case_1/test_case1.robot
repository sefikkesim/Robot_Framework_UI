*** Settings ***


Library                   SeleniumLibrary


Resource                  ../variable.robot
Resource                  ../test_data.robot
Resource                  ../signup_page_locaters.robot
Resource                  ../home_page_locaters.robot
Resource                   ../global_keywords.robot
Resource                  keywords.robot


Test Setup         Run keywords   Navigate The Website And Verify Home Page is Visible
Test Teardown      Close Browser

*** Test Cases ***
Reagister User
    Input User Information And Click Signup Button 
    Fill Out Register Form And Create A New Account
    Verify A New Account is Created
    Delete The Account
  