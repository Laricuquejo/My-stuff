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

### Coverage can measure different things:

#### Requirements coverage - How many requirements have you tested?
If there are 100 requirements and you've tested 80 of them, you have 80% requirements coverage

#### Code coverage - How much of the actual code has been executed by your tests?
Statement coverage: How many lines of code ran?
Branch coverage: How many decision paths (if/else) did you test?
#### Test condition coverage - How many identified test conditions have you covered with test cases?

# White-box Testing
![App Screenshot](/images/White-Box-Testing2.png)
- Is the opposite from black-box testing, you need to understand code.
![App Screenshot](/images/White-Box-Testing.png)

# Experience-based Testing
![App Screenshot](/images/Experience-based-Testing.png)

# Technique Selection Factors
![App Screenshot](/images/Technique-Selection-Factors.png)

# Multiple Sets of Partitions
- Most test objects will have many sets of partitions
- Each Choice coverage
- Invalid partitions should not be tested simultaneously

# Equivalence partitioning
- Massively reduces test cases
- Can be applied at all test levels
- Coverage is the number of equivalence partitions, tested by at least one value, divided by the total number of indentified partitions
- Partitions can be identified for any data element related to the test object
- The data type of the partitions can be wide ranging
- Example:  ![App Screenshot](/images/Equivalent-partitioning.png)

# Side questions
What coverage means?
- It is a testing concept that measures how much of something you've tested.

# Understanding Boundary Value Analysis

- Defects are more likely to occur near equivalence partition boundaries (in simple words: bugs are more likely to happen at the boundaries, rather then in the middle of a range)
- 2 versions (two-point & three-point)
- Boundary coverage for a partition is measured as the number of boundary values tested divided by the number of indentified boundary test values,normally expressed as a percentage 
- Can be applied at all test levels
- Cannot be used if a partition is not ordered
 
* Why use it? 
- Think of it this way: if you're testing a username field that accepts 6-100 characters, a programmer is more likely to make a mistake with the boundary logic (like using < (less) instead of <= (less or equal)) than with values in the middle. So testing values like 5, 6, 100, and 101 is smarter than testing random values like 50 or 75.

