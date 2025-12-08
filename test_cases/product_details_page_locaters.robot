*** Variables ***
${product_name}     xpath= //div[@class = 'product-information']/h2
${product_category}     xpath= (//div[@class = 'product-information']/p)[1]
${product_price}        xpath= //div[@class = 'product-information']/span/span
${product_availablity}     xpath= (//div[@class = 'product-information']/p)[2]
${product_condition}     xpath= (//div[@class = 'product-information']/p)[3]
${product_brand}     xpath= (//div[@class = 'product-information']/p)[4]
# ${product_quaantity}    xpath= //input[@name = 'quantity']
${add_to_cart_button}    xpath= //button[@type = 'button']