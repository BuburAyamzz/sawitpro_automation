*** Settings ***
Resource        ../resource/appium_keywords.robot
Test Setup      Open PetaniPRO App
Test Teardown   Close PetaniPRO App

*** Test Cases ***

Login With Invalid Data
    Wait Until Element Is Visible    xpath=//*[contains(@resource-id,"btn_profil")]    20s
    Click Element                   xpath=//*[contains(@resource-id,"btn_profil")]

    Wait Until Element Is Visible    xpath=//android.widget.Button    20s
    Click Element                   xpath=//android.widget.Button

    Wait Until Element Is Visible    xpath=//*[contains(@resource-id,"input_phone")]    20s
    Input Text                      xpath=//*[contains(@resource-id,"input_phone")]    085972957515

    Click Element                   xpath=//android.widget.TextView[@text="Ayo Mulai!"]
    Input Text                      xpath=//*[contains(@resource-id,"input_login_pin")]    200201


    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Pin yang Anda masukkan salah"]    20s


Login With Valid Data
    Wait Until Element Is Visible    xpath=//*[contains(@resource-id,"btn_profil")]    20s
    Click Element                   xpath=//*[contains(@resource-id,"btn_profil")]

    Wait Until Element Is Visible    xpath=//android.widget.Button    20s
    Click Element                   xpath=//android.widget.Button

    Wait Until Element Is Visible    xpath=//*[contains(@resource-id,"input_phone")]    20s
    Input Text                      xpath=//*[contains(@resource-id,"input_phone")]    085972957515

    Click Element                   xpath=//android.widget.TextView[@text="Ayo Mulai!"]

    Wait Until Element Is Visible    xpath=//*[contains(@resource-id,"input_login_pin")]    20s
    Input Text                      xpath=//*[contains(@resource-id,"input_login_pin")]    200202

Logout Successfully
    Wait Until Element Is Visible    xpath=//*[contains(@resource-id,"btn_profil")]    20s
    Click Element                   xpath=//*[contains(@resource-id,"btn_profil")]

    Wait Until Element Is Visible    xpath=//android.widget.Button    20s
    Click Element                   xpath=//android.widget.Button

    Wait Until Element Is Visible    xpath=//*[contains(@resource-id,"input_phone")]    20s
    Input Text                      xpath=//*[contains(@resource-id,"input_phone")]    085972957515

    Click Element                   xpath=//android.widget.TextView[@text="Ayo Mulai!"]

    Wait Until Element Is Visible    xpath=//*[contains(@resource-id,"input_login_pin")]    20s
    Input Text                      xpath=//*[contains(@resource-id,"input_login_pin")]    200202


    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Tutup"]    20s
    Click Element                   xpath=//android.widget.TextView[@text="Tutup"]

    Wait Until Element Is Visible    xpath=//android.view.View[@resource-id="btn_profil"]    20s
    Click Element                   xpath=//android.view.View[@resource-id="btn_profil"]

    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Keluar"]    20s
    Click Element                   xpath=//android.widget.TextView[@text="Keluar"]




