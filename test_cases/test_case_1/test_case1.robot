*** Settings ***

Library     Selenium2Library 

Resource                  ../variable.robot
Resource                  ../test_data.robot
Resource                  ../signup_page_locaters.robot
Resource                  ../home_page_locaters.robot
Resource                  keywords.robot

Suite Setup         Run keywords   Navigate The Website And Verify Home Page is Visible
Suite Teardown      Close Browser

*** Test Case ***
Reagister User
    Input User Information And Click Signup Button 
    Fill Out Register Form And Create A New Account
    Verify A New Account is Created
    Delete The Account
  