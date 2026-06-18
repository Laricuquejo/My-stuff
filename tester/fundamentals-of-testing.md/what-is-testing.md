Core takeaways:
1. List of common Test Objectives
2. Understand the difference between testing and debugging
3. Understand the difference between Testing, QA, QC, and QM
4. Mistake vs defect vs failure
5. Explain the 7 testing principles
6. Recall Test Activities and their related Work Products
7. Describe 2 common Test Roles
8. Understand the varying degrees of indepence in testing
 

Testing:
- Test planning: what, how, by when?
- Analysis
- Test design
- Test execution and checking the results
- Bug reporting
- Test reporting

Test objectives:
1. Evaluating work products
	- Requirements, user stories, designs
	- We prevent!
2. Triggering  failures and finding defects
3. Help reduce the level of risk of inadequate software quality
4. To verify whether all specified requirements have been fulfilled
	- To comply with contractual, legal, or regulatory requirements or standards
	-  Provide sufficient information to stakeholders to allow them to make informed decisions
	- Build confidence in the level of quality of the test object
	- Validating whether the test object is complete and validate if it works as the user and other stakeholders expect
	
What is Not testing?
Testing is not debugging

Testing vs QA vs QC:
Quality Assurance (QA):
	- Adherence to process
	- "Are we doing things right? Can we improve our processes?"
	- Managing tool
	- Proactive
	-Prevents

Quality Control (QC):
	- Testing
	- Test design
	- Test execution
	- Reactive
	- Detects

Error vs Defect vs Failure:
Error --> Defect/Fault --> Failure
"Mistake" -> Bug (synonyms)

How does testing contribute to the overall succes of software?
- By applying the right test techniques at the right phases in the SDLC (Software Development Life Cycle)

The 7 Testing Principles (decorar pra prova):

1. Testing shows the presence of defects, not their absence:
	- Absence of evidence is not evidence of absence
	- If we didn't find any bugs so far,  it doesn't mean they're not there
	- Don't answer the question "Is the quality good now?" with "Yes, this software has no bugs" or "This system is completely bug free". Answer the question with this or something similar with "I haven't found any (more) bugs" or "I haven't found any further issues".	

2. Exhaustive testing is impossible:
	- 100% inclusive and comprehensive, something that has NO omissions.

3. Early testing saves time and money
4. Defects cluster together
5. Tests wear out:
	- Tests initially catch bugs
	- With time, the same tests stop catching anything
	- To detect new defects:
		- Review and change existing tests and data
		- Create new tests
6. Testing is context dependent
7.Absence-of-errors- is a fallacy.

Cool example of how to prioritize what to test:
I need to test this, but I only have 2 days --> A (Has a new feature), B (No change), C (No change)

Prioritize: 
1) Test Module A (the new feature)
2) In the past 2 months:
	- Module B had 10 bugs     <-- Focus here!
	- Module C had 2 bugs
3) Test Module C if you have spare time

Another simple testing example: ![App Screenshot](/images/testing-example.png)





