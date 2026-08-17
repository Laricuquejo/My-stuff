# Understanding the Test Pyramid
- Used to group tests into layers with different goals
- Commonly used tests into layers with different goals
- Commonly used for test automation
- Lower-level tests are faster and more isolated
- Lower-level tests are generally easier to run earlier in the development process
- Higher-level test provide a higher coverage and more confidence in the software as a whole

# Testing quadrants
- Q1: Technology facing and team support
- Q2: Business facing and team support
- Q3: Business facing and product focused
- Q4: Technology facing and product focused

# Risk
- A factor that could result in future negative consequences 
- Risk likelihood: 
    - The probability of a risk being realized
- Risk impact:
    - The consequences of the occurrence
- Risk level: 
    - A measure that takes into account likelihood and impact

# Types of Risk
- Project Risks: 
    - Related to management of a project
- Potencial consequences:
    - Delayed release dates
    - Running over budget
    - Failure to meet the project´s aims

- Product Risks:
    - Related to product quality characteristics
- Potencial consequences:
    - Reputational damage
    - High maintenance costs
    - Physical harm

# Defect Management
- The exact process will be specific to your team or organization
- All stakeholders must follow the same process
- Consider using the same process for all types of defects

# Defect Report Structure
- Title
- summary
- Steps to reproduce
- Expected and actual results
- Evidence:
    - Screenshots
    - Videos
    - Logs

# Example of a Defect Report
![App Screenshot](/images/Defect-Report.png)

# Metadata
- Most should be automatically captured by a defect management tool
- Unique identifier
- Date of observation
- Creator details
- Priority and severity of defect
- Status
- Software versions
- Related entities

Defect Management
Purpose: To systematically track and manage defects from discovery through resolution.
Defect Report Elements: A defect report should contain suﬃcient information for someone else to
understand, reproduce, and fix the issue. Key fields include:
Unique Identifier
Title/Summary
Date/Time Found
Author
Test Item/Component
Test Environment
Context (e.g., specific configuration)
Failure Description (detailed steps to reproduce the failure)
Actual Result (what happened)
Expected Result (what should have happened)
Severity (impact on functionality)
Priority (urgency of fixing)
Status (e.g., New, Open, Fixed, Deferred, Closed)
References (e.g., to test case, requirement)
Attachments (logs, screenshots, videos)
Defect Lifecycle: The typical workflow of a defect (e.g., New -> Assigned -> Open -> Fixed -> Retest ->
Closed/Reopened).
