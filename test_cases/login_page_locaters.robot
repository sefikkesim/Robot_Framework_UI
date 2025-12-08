*** Variables ***
${login_email}   xpath = //input[@data-qa = 'login-email']
${login_password}   xpath = //input[@data-qa = 'login-password']
${login_button}   xpath = //button[@data-qa = 'login-button']
${login_to_your_account_text}   xpath = //*[contains (text(),'Login to your account')]
${incorrect_email_and_password_text}   xpath = //*[contains (text(),'Your email or password is incorrect!')]
${logout_link}      xpath = //a[@href = '/logout']


