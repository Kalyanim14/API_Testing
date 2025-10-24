# API Test Suite (ReqRes API)

This project contains a simple and optimized **Robot Framework** test suite to verify REST API endpoints using the public [ReqRes](https://reqres.in) API.  
The suite demonstrates basic **GET**, **POST**, and **PUT** requests with the `RequestsLibrary`.

---

## Project Structure

robot-tests/
├── tests/
│ └── api_tests.robot # Main Robot test file
└── README.md # Documentation


---

## ⚙️ Requirements

Before running the tests, make sure you have:

- **Python 3.8+**
- **pip** (Python package manager)
- **Robot Framework**
- **RequestsLibrary**

### 🔧 Install Dependencies

```bash
pip install robotframework
pip install robotframework-requests

🧪 Test Cases Overview
1. GET User Details

Endpoint: GET /api/users/2

Purpose: Verify the API returns valid user data.

Expected Status Code: 200

2. POST Create New User

Endpoint: POST /api/users

Purpose: Create a new user with name and job.

Expected Status Code: 201

3. PUT Update User

Endpoint: PUT /api/users/2

Purpose: Update an existing user’s information.

Expected Status Code: 200

▶️ Test Execution Steps

Open a terminal or command prompt in the project root folder.

Run the following command to execute tests:

robot tests/api_tests.robot


After execution, Robot Framework generates:

report.html → Detailed report

log.html → Execution log

output.xml → Raw test result file

Sample output

==============================================================================
Api Tests
==============================================================================
Get User Details :: Verify GET user API returns correct details       | PASS |
Create New User :: Verify POST user API creates a new user            | PASS |
Update User Info :: Verify PUT user API updates user info             | PASS |
------------------------------------------------------------------------------
Api Tests                                                              | PASS |
3 tests, 3 passed, 0 failed
==============================================================================
Output:  output.xml
Log:     log.html
Report:  report.html
