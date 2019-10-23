*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${BROWSER}    chrome
${WELCOME URL}    https://www.google.com/
${DELAY}    0

*** Test Cases ***
Go To Homepage
	Open Browser    ${WELCOME URL}     ${BROWSER}
	Input Text    q    https://www.cs.kku.ac.th
	Submit Form    tsf
	[Teardown]    Close Browser
	