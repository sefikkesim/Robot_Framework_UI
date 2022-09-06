*** Keywords ***
Navigate To Product Page 
    Click Link   ${products_link}

Hover Over First Product And Click Add To Cart Button
    ${all_products}  Get WebElements   xpath=//div [@class = 'product-image-wrapper']
    Mouse Over   ${all_products[0]}
    ${add_to_cart_btn_first_product}   Get WebElements  xpath= //a [@data-product-id= '1']
    Scroll Element Into View    ${all_products[4]}
    Wait Until Element Is Enabled 	   ${add_to_cart_btn_first_product[1]}
    Click Link   ${add_to_cart_btn_first_product[1]}

Click Continue Shopping Button
    Wait Until Element Is Visible     ${continue_shopping_btn}
    Click Element   ${continue_shopping_btn}

Hover Over Second Product And Click Add To Cart Button
    ${all_products}  Get WebElements   xpath=//div [@class = 'product-image-wrapper']
    Mouse Over   ${all_products[1]}
    ${add_to_cart_btn_second_product}   Get WebElements  xpath= //a [@data-product-id= '2']
    Wait Until Element Is Enabled    ${add_to_cart_btn_second_product[1]}
    Click Link   ${add_to_cart_btn_second_product[1]}

Click View Cart Button
    Wait Until Element Is Visible  ${view_cart_btn}
    Click Element   ${view_cart_btn}

Verify Both Products Are Added To Cart
    ${xpath}=   Set Variable    //tbody/tr
    ${count}=   Get Element Count    ${xpath}
    ${products_in_cart}   Create List 
    FOR  ${i}   IN RANGE  1  ${count} + 1
        ${id}  Get Element Attribute  xpath= (${xpath})[${i}]   id
        Append To List   ${products_in_cart}   ${id}
    END
    # Log  ${products_in_cart}
    Should Be Equal As Strings   ${products_in_cart[0]}       product-1   
    Should Be Equal As Strings   ${products_in_cart[1]}       product-2 

Verify Prices Of Products
    ${price_of_first_product}  Get Text 	 xpath=//tbody/tr[1]/td[3]
    ${price_1}=  Get Substring 	 ${price_of_first_product}  4   7
    # Log       ${price}
    Should Be Equal As Strings    ${price_1}       500
    ${price_of_second_product}  Get Text 	 xpath=//tbody/tr[2]/td[3]
    ${price_2}=  Get Substring 	 ${price_of_second_product}  4   7
    Should Be Equal As Strings    ${price_2}       400

Verify Quantities Of Products
    ${quantity_of_first_product}    Get Text  xpath=//tbody/tr[1]/td[4]/button
    Should Be Equal As Strings    ${quantity_of_first_product}   1 

    ${quantity_of_second_product}    Get Text  xpath=//tbody/tr[2]/td[4]/button
    Should Be Equal As Strings    ${quantity_of_second_product}   1 

Verify Total Prices Of Products
    ${total_price_of_first_product}   Get Text 	 xpath=//tbody/tr[1]/td[5]
    ${total_price_1}=  Get Substring 	 ${total_price_of_first_product}  4   7
    Should Be Equal As Strings    ${total_price_1}       500

    ${total_price_of_second_product}   Get Text 	 xpath=//tbody/tr[2]/td[5]
    ${total_price_2}=  Get Substring 	 ${total_price_of_second_product}  4   7
    Should Be Equal As Strings    ${total_price_2}       400