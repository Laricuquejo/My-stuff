# Why Write a Test Plan?
![App Screenshot](/images/Why-plan.png)

# Purpose of a Test Plan
- Documents the test approach
- Helps ensure test objectives will be achieved
- Confirms adherence to existing test policies
- Acts as a source of information for all stakeholders

# Principles for Creating an Effective Test Plan
- Collaboration
- Clarity
- Traceability
- Adaptability
- Review & approval
- Version control

# Release Planning
- Defines the product backlog
- Write testable user stories
- Risk analysis
- Test plan
- Estimates
- Guides the development approach

# Iteration Planning
- Drills down into the detail
- Focuses on the iteration backlog:
    - Detail testing tasks to be performed
    - Perform risk analysis of specific user stories
    - Estimate test effort 

# Entry Criteria
- Define the necessary requirements for starting an activity
- Failing to meet all entry criteria have various negative impacts on an activity
- Should be defined for each test level
- Referred to as the 'Definition of Ready' in Agile software development

# Exit Criteria
- Define what must be achieved for an activity to be regarded as completed
- May act as the entry criteria for a subsequent activity
- Should be defined for each test level 
- Referred to as the 'Definition of Done' in Agile software development

# Explanation from IA
# Test Plans Overview
- Test plans are roadmaps that organize test activities for teams and stakeholders
They include risk identification, mitigation strategies, and defining the test approach
Essential for effective test management.

# Planning Across Different SDLC Models
- Release Planning: Focuses on the overall release scope
Iteration Planning: Covers smaller scopes with more detailed information; testers reassess activities and estimates regularly

# Entry and Exit Criteria
- Entry Criteria (when testing can begin):
    - Testware availability
    - Resource availability
    - Initial quality of the test object
- Exit Criteria (when testing can stop):
    - Measures of thoroughness
    - Completion criteria
    - Time/budget constraints
    - In Agile, these are called "Definition of Ready" and "Definition of Done"
# Test Case Prioritization Strategies

- Risk-based: Test the most critical risks first
- Coverage-based: Prioritize based on coverage types (e.g., branch coverage)
- Additional Coverage: Consider what's already been tested
- Requirements-based: Focus on stakeholder-identified important requirements
- Note: Dependencies and resource availability may override these strategies

# Key Concepts We Explored Together:
### Why Estimate Test Effort Before Starting?

- Resource allocation (people, tools, environments)
- Budget planning
- Scheduling and coordination with other project phases
- Risk management (identifying potential time/budget shortfalls early)
- Setting realistic stakeholder expectations
- Risk without estimation: Running out of time/budget or releasing untested software

### Reasons for Slower-Than-Planned Test Progress
- Poor initial estimates
- Environment issues (crashes, unavailability)
- Finding defects (which require reporting, fixing, retesting)
- Dependencies on developers or test data
- Resource problems (absences, skill gaps, competing priorities)
- Unclear or overly complex test cases
- Communication strategy: Be transparent with data, explain root causes, propose solutions

### Estimating Test Effort for a Login Feature Consider:
- Feature complexity (simple password vs. OAuth, 2FA, recovery, etc.)
- Number of test scenarios (valid/invalid credentials, locked accounts, etc.)
- Test environment setup time
- Types of testing (functional, security, performance, compatibility)
- Automation vs. manual testing trade-offs
- Tester experience and efficiency
- Time for defect handling and retesting

# The Value of Detailed Test Planning Benefits:
- Clear scope and objectives
- Better resource allocation
- Risk-based prioritization
- A roadmap that keeps everyone aligned
- Measurable progress for stakeholder communication
- Prevents missing critical scenarios
- Avoids duplication and wasted effort
- Risks of skipping planning:
- Random, unfocused testing
- Unknown costs and timelines
- Loss of purpose (not knowing why you're testing)
- Poor stakeholder communication
- No defect prioritization
- Critical defects escaping to production

### Challenges in Convincing Teams to Invest in Test Planning
- Lack of patience: Pressure to deliver quickly; misconception that planning isn't "real work"
- Poor understanding: Testing undervalued; invisible cost of poor planning; lack of metrics

### How to address:
- Use data and case studies
- Translate benefits into business language
- Start with pilot projects to demonstrate value
- Visualize planning as progress
- Educate gradually with training and industry standards
- Your Key Insight: Planning is an investment, not a delay. Taking time upfront to plan properly saves exponentially more time during execution and prevents costly mistakes later.