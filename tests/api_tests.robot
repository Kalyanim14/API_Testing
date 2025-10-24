*** Settings ***
Library    RequestsLibrary

Suite Setup       Create API Session
Suite Teardown    Delete All Sessions

*** Variables ***
${BASE_URL}       https://reqres.in
${HEADERS}        {"Content-Type": "application/json"}

*** Keywords ***
Create API Session
    Create Session    reqres    ${BASE_URL}    verify=False

*** Test Cases ***

Get User Details
    ${response}=    GET On Session    reqres    /api/users/2
    Should Be Equal As Integers    ${response.status_code}    200
    Log To Console    \nGET Response: ${response.json()}


Create New User
    ${payload}=    Create Dictionary    name=Kalyani    job=Tester
    ${response}=    POST On Session    reqres    /api/users    json=${payload}    headers=${HEADERS}
    Should Be Equal As Integers    ${response.status_code}    201
    Log To Console    \nPOST Response: ${response.json()}


Update User Info
    ${payload}=    Create Dictionary    name=Kalyani    job=QA Engineer
    ${response}=    PUT On Session    reqres    /api/users/2    json=${payload}    headers=${HEADERS}
    Should Be Equal As Integers    ${response.status_code}    200
    Log To Console    \nPUT Response: ${response.json()}
