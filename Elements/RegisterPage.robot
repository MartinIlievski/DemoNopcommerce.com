*** Variables ***
${RegisterUserButton}    //a[@class="ico-register"]    # RegisterPage
${PageTitle}      class:page-title    # RegisterPage
${RadioButtonMale}    id:gender-male    # RegisterPage
${InputFieldFN}    name:FirstName    # RegisterPage
${InputFieldLN}    id:LastName    # RegisterPage
${ListDay}        name:DateOfBirthDay    # RegisterPage
${ListMonth}      name:DateOfBirthMonth    # RegisterPage
${ListYear}       name:DateOfBirthYear    # RegisterPage
${InputFieldEmail}    id:Email    # RegisterPage
${InputFieldCompany}    id:Company    # RegisterPage
${RadioButtonNewsletter}    id:Newsletter    # RegisterPage
${InputFieldPass}    id:Password    # RegisterPage
${InputFieldConfPass}    id:ConfirmPassword    # RegisterPage
${RegisterButton}    id:register-button    # RegisterPage
${ExistingEmailMess}    class:message-error validation-summary-errors    # RegisterPage
${RegisterContButton}    name:register-continue    # RegisterPage
${LogOutUser}     class:ico-logout
${FooterAssert}    //div[@class="footer-powered-by"]
${FirsNameError}    //*[@id="FirstName-error"]
${LastNameError}    //*[@id="LastName-error"]
${EmailError}     //*[@id="Email-error"]
${PassError}      //*[@id="Password-error"]
${PassConfError}    //*[@id="ConfirmPassword-error"]
