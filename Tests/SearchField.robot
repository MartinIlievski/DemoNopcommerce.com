*** Settings ***
Suite Setup       OpenBrowserOnGivenUrl
Suite Teardown    CloseBrowser
Resource          ../Keywords/SearchField.robot
Resource          ../Keywords/OpenBrowserOnGivenUrl.robot
Resource          ../Keywords/CloseBrowser.robot

*** Test Cases ***
SearchExistingItem
    SearchExistingItem

SearchNonExistingItem
    SearchNonExistingItem
