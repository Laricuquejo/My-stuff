# ISTQB Learning Objective Classifications
K1 - remember, recognize, recall
K2 - understand, explain, compare
K3 - apply, use
# Black-box Testing:
- The test basis may include user stories, use cases and other requirements documentation.
- Test cases help detect deviations between requirements and the implementation.
- Coverage is bases on the items tested in the test basis but also depend on the black-box tet technique applied.
- Can be performed at all test levels.
# Static Black-box Testing
Static means --> reviewing documents, requirements, or specifications without running code.
 ![App Screenshot](/images/Static-Black-box-Testing.png)
- By checking the requirements we found a defect and then corrected by adding another requirement (the last requirement in pink).

# Dynamic Black-box Testing
Is a type of black-box testing that specifically involves executing the software. "Dynamic" means the code is actually running during the test.

# Static Black-box Testing vs Dynamic Black-box Testing
### Example:
Dynamic Black-box Testing --> Testing a login feature by entering various username/password combinations and checking if access is granted correctly.
Static Black-box Testing --> reviewing the login requirements document to find inconsistencies = Static black-box testing.

# Side questions
What coverage means?
- It is a testing concept that measures how much of something you've tested.
### Coverage can measure different things:

#### Requirements coverage - How many requirements have you tested?
If there are 100 requirements and you've tested 80 of them, you have 80% requirements coverage

#### Code coverage - How much of the actual code has been executed by your tests?
Statement coverage: How many lines of code ran?
Branch coverage: How many decision paths (if/else) did you test?
#### Test condition coverage - How many identified test conditions have you covered with test cases?

