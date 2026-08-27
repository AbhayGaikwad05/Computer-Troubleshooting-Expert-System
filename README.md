# Computer-Troubleshooting-Expert-System
MDM AIML ASSIGNMENT
# Computer Troubleshooting Expert System

## Practical Title

Develop Expert System by creating knowledge base of facts and rules for specialized knowledge domain of your choice.

## Domain

**Computer/Laptop Troubleshooting**

## Problem Statement

To develop a rule-based Expert System using SWI-Prolog that can identify common computer and laptop problems based on symptoms provided by the user.

The system uses a knowledge base containing facts and rules. Based on the entered symptoms, the system applies logical inference to identify a possible problem and provides a recommended solution.

## Objectives

1. To understand the concept of Expert Systems.
2. To create a knowledge base using facts and rules.
3. To implement rule-based inference using SWI-Prolog.
4. To identify computer problems based on given symptoms.
5. To provide suitable troubleshooting recommendations.

## Theory

An Expert System is an Artificial Intelligence system that uses domain-specific knowledge and logical reasoning to solve problems or provide recommendations.

The main components of an Expert System are:

- **Knowledge Base** – stores domain-specific facts and rules.
- **Inference Engine** – applies rules to the available facts and derives conclusions.
- **User Interface** – allows the user to interact with the system.

In this project, the selected domain is Computer/Laptop Troubleshooting.

Symptoms are represented as facts, for example:

```prolog
symptom(no_power).
symptom(no_display).

Rules are used to derive conclusions from these facts:

diagnose(power_issue) :-
    symptom(no_power),
    symptom(no_display).

If both symptoms are present, the system concludes that there may be a power issue.

Technologies Used
Prolog
SWI-Prolog 10.x
Standard SWI-Prolog built-in predicates
No external libraries required
No external dataset required
Knowledge Base

The system contains rules for the following problems:

Symptoms	Diagnosis
No power + No display	Power Issue
Overheating + Noisy fan	Cooling Problem
Slow system + Low disk space	Storage Problem
Wi-Fi not working + Adapter detected	Network Problem
Fast battery drain + Poor battery health	Battery Problem
Unexpected shutdown + Overheating	Power/Overheating Problem
Project Structure
Computer-Troubleshooting-Expert-System/
│
├── ExpertSystem.pl
├── README.md
├── Sample-Output.txt
│
└── Screenshots/
    ├── System-Loaded.png
    ├── Power-Issue.png
    ├── Cooling-Problem.png
    ├── Storage-Problem.png
    ├── Network-Problem.png
    └── Battery-Problem.png
Source Code

The main source code is available in:

ExpertSystem.pl
How to Run
Step 1: Install SWI-Prolog

Install SWI-Prolog on your computer.

Step 2: Open SWI-Prolog

Launch the SWI-Prolog console.

Step 3: Set the Working Directory

Navigate to the folder containing ExpertSystem.pl.

For example:

?- working_directory(_, 'C:/Users/admin/Documents/prolog/').
Step 4: Load the Program
?- ['ExpertSystem.pl'].

Expected output:

true.
Step 5: Start the Expert System
?- start.

Expected output:

==========================================
 COMPUTER TROUBLESHOOTING EXPERT SYSTEM
==========================================
Knowledge Base Loaded Successfully.
Use assertz(symptom(...)) to enter symptoms.
Use diagnose(X) to identify the problem.
Use show_diagnosis(X) to display the solution.
==========================================
true.
Sample Test Cases
Test Case 1 – Power Issue

Enter:

?- clear_symptoms.
?- assertz(symptom(no_power)).
?- assertz(symptom(no_display)).
?- diagnose(X).

Output:

X = power_issue.

Display the recommendation:

?- show_diagnosis(power_issue).

Output:

Possible Problem: power_issue
Recommended Solution: Check the power cable, charger, battery and power supply.
true.
Test Case 2 – Cooling Problem
?- clear_symptoms.
?- assertz(symptom(overheating)).
?- assertz(symptom(noisy_fan)).
?- diagnose(X).

Output:

X = cooling_problem.

Recommendation:

Possible Problem: cooling_problem
Recommended Solution: Clean the cooling vents and fan and ensure proper ventilation.
Test Case 3 – Storage Problem
?- clear_symptoms.
?- assertz(symptom(slow_system)).
?- assertz(symptom(low_disk_space)).
?- diagnose(X).

Output:

X = storage_problem.

Recommendation:

Possible Problem: storage_problem
Recommended Solution: Free disk space by removing unnecessary files and programs.
Test Case 4 – Network Problem
?- clear_symptoms.
?- assertz(symptom(wifi_not_working)).
?- assertz(symptom(adapter_detected)).
?- diagnose(X).

Output:

X = network_problem.

Recommendation:

Possible Problem: network_problem
Recommended Solution: Restart the network adapter and check the Wi-Fi configuration.
Test Case 5 – Battery Problem
?- clear_symptoms.
?- assertz(symptom(fast_battery_drain)).
?- assertz(symptom(poor_battery_health)).
?- diagnose(X).

Output:

X = battery_problem.

Recommendation:

Possible Problem: battery_problem
Recommended Solution: Check battery health and consider replacing the battery if required.
Result

The Computer/Laptop Troubleshooting Expert System successfully identifies common computer problems based on the symptoms provided.

The system correctly uses facts and rules to perform logical inference and provides an appropriate troubleshooting recommendation.

Observations
Symptoms were successfully stored as Prolog facts.
Rules successfully matched the entered symptoms.
The system correctly identified different computer problems.
Appropriate recommendations were displayed.
Previous symptoms could be removed using clear_symptoms.
Multiple test cases were successfully executed.
Performance Analysis

The Expert System was tested using different combinations of symptoms.

The system correctly matched the symptoms with the predefined rules and generated the expected diagnoses. The system is deterministic for the rules defined in the knowledge base.

The effectiveness of the system depends on the completeness and accuracy of its knowledge base. Additional problems can be supported by adding new facts, diagnosis rules, and recommendations.

Dataset

No external dataset is required.

The knowledge used by the system is represented directly using Prolog facts and rules.

Requirements
SWI-Prolog 10.x
Windows/Linux/macOS
No external libraries or packages are required.

Therefore, a requirements.txt file is not required for this project.

Screenshots

The Screenshots folder contains execution screenshots demonstrating:

Expert System successfully loaded.
Power Issue diagnosis.
Cooling Problem diagnosis.
Storage Problem diagnosis.
Network Problem diagnosis.
Battery Problem diagnosis.
Conclusion

The Computer/Laptop Troubleshooting Expert System was successfully developed using SWI-Prolog.

The project demonstrates how an Expert System can represent domain-specific knowledge using facts and rules and use logical inference to identify problems and provide recommendations.

The practical helped in understanding Expert Systems, Knowledge Bases, Facts, Rules, Inference, and Rule-Based Reasoning.

Author

Name: Abhay Gaikwad

PRN: 202401100146

Branch: Computer Engineering

License

This project is developed for academic/educational purposes.


### Your GitHub repository should finally look like:

```text
📁 Computer-Troubleshooting-Expert-System
│
├── 📄 ExpertSystem.pl
├── 📄 README.md
├── 📄 Sample-Output.txt
│
└── 📁 Screenshots
    ├── System-Loaded.png
    ├── Power-Issue.png
    ├── Cooling-Problem.png
    ├── Storage-Problem.png
    ├── Network-Problem.png
    └── Battery-Problem.png
