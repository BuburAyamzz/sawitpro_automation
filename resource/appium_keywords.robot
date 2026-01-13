*** Settings ***
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}      http://127.0.0.1:4723
${PLATFORM_NAME}   Android
${DEVICE_NAME}     Medium Phone API 36.1
${APP_PACKAGE}     com.sawitpro.petaniapp
${APP_ACTIVITY}    .ui.FarmerAppActivity

*** Keywords ***
Open PetaniPRO App
    Open Application
    ...    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    appium:automationName=UiAutomator2
    ...    appium:deviceName=${DEVICE_NAME}
    ...    appium:appPackage=${APP_PACKAGE}
    ...    appium:appActivity=${APP_ACTIVITY}
    ...    appium:noReset=false
    ...    appium:autoGrantPermissions=true

Close PetaniPRO App
    Terminate Application    ${APP_PACKAGE}
    Close Application


