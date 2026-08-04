# Statement Testing
- Statement testing is a white-box testing technique that makes sure every executable line of code gets run at least once.
- Exercises executable statements in the code
- Coverage is measured as the number of statements exercised by the tests divided by the total number of executable statements
- Use control flow diagrams to visualise the control flows of the code
- Exercising a statement does not guarantee that it does not have any defects

# Branch Testing
- Branch testing ensures you test every possible path through decision points in your code (like if/else statements, switch cases, loops).
- Exercises the branches in the test object
- Coverage is measured as the number of branches exercises by test divided by the total number of branches
- 100% branch coverage guarantees 100% statement coverage
- 100% statement coverage does not guarantee 100% branch coverage
- Exercising a branch does not guarantee that it does not have any defects

# Error Guessing Examples:
- Touchscreen usability issues in an app for children
- Contradictory system requirements
- New technologies being used
- An integration with a 3rd party service that has a history of failures
- Caching issues

# Categories of Errrors, Defects and Failures
![App Screenshot](/images/CategoriesofErrors.png)

# Checklist Items
- Test that API validates user permissions correctly 
- Test the sorting functionality as an admin user
- Test that all mandatory fields are validated
- Test that SQL injection attacks in the form fields are handled correctly
- Verify that the login page loads within 3 seconds

# Checklist Data Sources
![App Screenshot](/images/Checklist-Data-Sources.png)

# Maintaining Checklist Effectiveness
- Tests wear out 
- New items may be added based upon defect analysis
- The length of the checklist must be limited

# Session-based Exploratory Testing
- Testing is carried out within a defined time-box
- Testing is guided by a test charter
- Activities may be documented using session sheets

# When should Exploratory Testing Be Used?
- Limited docmentation 
- Time and budget constraints
- Combined with other techniques
- Skilled tester
