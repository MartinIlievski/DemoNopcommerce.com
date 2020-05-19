*** Variables ***
${FooterAssert}    //div[@class="footer-powered-by"]
${MyAccountButton}    //div[1]/ul/li[1]/a[@class="ico-account"]
${TitleMyAccount}    //div[2]/form/div[1]/div[@class="title"]
${RadioButtonFemale}    //*[@id="gender-female"]
${FNMyAccount}    //*[@id="FirstName"]
${LNMyAccount}    //*[@id="LastName"]
${DateOfBirth}    name:DateOfBirthDay
${MonthOFBirth}    name:DateOfBirthMonth
${YearOfBirth}    name:DateOfBirthYear
${EmailField}     //*[@id="Email"]
${CompanyField}    //*[@id="Company"]
${NewsletterCheckBox}    //*[@id="Newsletter"]
${SaveButton}     //*[@id="save-info-button"]
${AddressLeftMenu}    //ul/li[2]/a[@href="/customer/addresses"]
${EditButton}     //div[2]/input[@value="Edit"]
${TitleEditAddress}    //div[2]/form/div/div[@class="page-title"]
${SaveButtonAddress}    //div[2]/input[@class="button-1 save-address-button"]
${FNChangeAddress}    //*[@id="Address_FirstName"]
${LNChangeAddress}    //*[@id="Address_LastName"]
${EmailChange}    //*[@id="Address_Email"]
${NameCompanyChange}    //*[@id="Address_Company"]
${MobileChange}    //*[@id="Address_PhoneNumber"]${FNChangeAddress}    //*[@id="Address_FirstName"]
${LNChangeAddress}    //*[@id="Address_LastName"]
${EmailChange}    //*[@id="Address_Email"]
${NameCompanyChange}    //*[@id="Address_Company"]
${MobileChange}    //*[@id="Address_PhoneNumber"]
${ChangePassButton}    //div[2]/ul/li[7]/a[@href="/customer/changepassword"]
${OldPassFieldInput}    //*[@id="OldPassword"]
${NewPassFieldInput}    //*[@id="NewPassword"]
${ConfNewPassFieldInput}    //*[@id="ConfirmNewPassword"]
${ConfirmChangePassButton}    //div[2]/input[@value="Change password"]
