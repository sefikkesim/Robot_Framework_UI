*** Keywords ***
Navigate To Product Page and Verify The Page Is Loaded 
    Click Element    ${products_link}
    Element Should Be Visible 	  ${all_products_text}

Search Product and Verify Results Are Visible
    Input Text      ${search_product_box}    cotton
    Click Button   ${search_button}
    Element Should Be Visible 	  ${searched_products_text}

Verify All The Products Related To Search Are Visible
    ${xpath}=  Set Variable 	 //div [@class = 'productinfo text-center']/p 
    ${count}=  Get Element Count   ${xpath}
    ${all_titles}=  Create List
    FOR  ${i}   IN RANGE  1  ${count} + 1
        ${product_title}   Get Text  xpath=(${xpath})[${i}]
        Append To List   ${all_titles}      ${product_title} 
    END
    # Log List   ${all_titles}
    FOR   ${title}  IN  ${all_titles}
        Should Contain   ${product_title}  Cotton  
    END