*** Keywords ***
Click on View Product link of First Product
    ${all_view_product_link}   Get WebElements 	 link=View Product
    Scroll Element Into View   ${all_view_product_link[6]}
    Click Element    ${all_view_product_link[0]} 

Verify Product Details 
    Location Should Contain   product_details/1
    Element Text Should Be      ${product_name}     Blue Top   ignore_case = True
    Element Should Contain   ${product_category}    Women      ignore_case = True
    Element Should Contain   ${product_price}       500        ignore_case = True
    Element Should Contain   ${product_availablity}       In Stock        ignore_case = True
    Element Should Contain   ${product_condition}       New        ignore_case = True
    Element Should Contain   ${product_brand}        Polo          ignore_case = True

Navigate To Product Page and Verify The Page Is Loaded 
    Click Element    ${products_link}
    Element Should Be Visible 	  ${all_products_text}