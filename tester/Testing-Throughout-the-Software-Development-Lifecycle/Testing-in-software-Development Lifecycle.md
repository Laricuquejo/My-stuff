# Software development lifecycle (SDLC):
Is a systematic plan that defines a process and answers what? who? when? and how? to deliver software:

Sequential:
- Waterfall
- V-Model

Iterative:
- Spiral
- Prototyping

Interative agile methodologies: 
- Scrum, Kanban...

Incremental: 
- Unified Process

# TDD (Test-Driven Development)
TDD is a test-first approach primarily done by developers. Here's how it works:

Write the test first, run it and see it fail
Then create the function or feature
Run the test again and see it pass
TDD may verify both business logic and technical details—including low-level "plumbing" that the outside world doesn't see but is essential for the software to work[1].

# ATDD (Acceptance Test-Driven Development)
ATDD is similar to TDD but focuses on acceptance criteria:

Tests are derived from acceptance criteria and can be understood by non-technical people
Tests verify observable business events (like "add item to basket, check out, pay, basket must be emptied, confirmation email delivered")
These tests interact with the software's interface without caring about what happens "under the hood"
May involve other team members beyond just developers[2]

# BDD (Behavior-Driven Development)
BDD is similar to ATDD but emphasizes collaboration:

Involves the "three amigos": business representative/product owner, developer, and tester
Desired behavior is expressed in natural language using the given-when-then format
Example: "Given John wants to request his password, when he enters his email address, then he should be sent reset instructions to the entered address"
These plain English scenarios can then be written in code[3]
# Key Differences Summary
TDD: Developer-focused, covers both business logic and technical details
ATDD: Team-involved, derived from acceptance criteria, focuses on business logic only
BDD: Similar to ATDD but emphasizes close collaboration and uses given-when-then format in plain English[3]
The common thread? All three write tests or scenarios before the software is written!