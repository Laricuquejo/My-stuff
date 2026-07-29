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

# Understanding Decision Table Testing

## The Main Idea
Think of a decision table like a spreadsheet that helps you organize different scenarios. Each column is a test case, and each row shows either:
- A condition (something that affects what happens)
- An action (what the system should do)

### How to Read It
- Y (Yes) or T (True): The condition is true, or the action happens
- N (No) or F (False): The condition is false, or the action doesn't happen
- Dash (–): It doesn't matter - this condition isn't relevant for this test
#### Why Use This?
- Decision tables help you avoid missing important test cases. By laying out all the conditions and systematically working through combinations, you can be confident you've tested all the important scenarios.

### The Process
Start with the worst-case scenario (everything is false), then gradually make one thing true at a time until you've covered all meaningful combinations. The example in the clip found 8 test cases needed to fully test a bill-paying feature.

#### Image as an example
- ![App Screenshot](/images/Decision-Table-Testing.png)

# Understanding State Transition Testing
- The Main Idea
Many systems have different "states" (like an industrial fan being off, slow, medium, or fast). State transition testing makes sure all the ways you can move between these states work correctly.

#### Two Coverage Types:
1. Valid Transition Coverage
- Tests every possible way to move from one state to another
- Example: The fan can go from slow → medium, medium → fast, etc.

2. All States Coverage
- Makes sure you visit every state at least once
- Example: An ATM being Ready, processing a PIN, showing Account Access, or eating a card
The Examples:
- Industrial Fan Example: You needed 2 tests to cover all the valid transitions (like powering on, speeding up, slowing down, and powering off).
- ATM Example: You needed 2 tests to reach all 7 states - one test where you enter the wrong PIN repeatedly, and another where you enter it correctly.

#### Important Lesson
Just visiting all the states doesn't mean you've tested all the transitions! In the ATM example, 2 transitions weren't tested even though all states were covered. This means potential bugs could be hiding in those untested transitions.

