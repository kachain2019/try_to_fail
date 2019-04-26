*** Settings ***
Library    SeleniumLibrary
# Test Teardown  Close Browser

*** Variables ***

*** Keyword ***

*** Test Cases ***
Workshop 01
    Open Browser  https://tympanus.net/Development/PageLoadingEffects/  browser=chrome
    Click Element  //a[@class="pageload-link"][text()="Show Page Loader"]
    Wait Until Page Contains Element   //div[@class="pageload-overlay"]
    Click Element  //a[@class="pageload-link"][text()="Go back"]
