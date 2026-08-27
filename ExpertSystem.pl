:- dynamic symptom/1.

% =========================================
% COMPUTER TROUBLESHOOTING EXPERT SYSTEM
% =========================================

% ----------- DIAGNOSIS RULES -------------

% Rule 1: Power Issue
diagnose(power_issue) :-
    symptom(no_power),
    symptom(no_display).

% Rule 2: Cooling Problem
diagnose(cooling_problem) :-
    symptom(overheating),
    symptom(noisy_fan).

% Rule 3: Storage Problem
diagnose(storage_problem) :-
    symptom(slow_system),
    symptom(low_disk_space).

% Rule 4: Network Problem
diagnose(network_problem) :-
    symptom(wifi_not_working),
    symptom(adapter_detected).

% Rule 5: Battery Problem
diagnose(battery_problem) :-
    symptom(fast_battery_drain),
    symptom(poor_battery_health).

% Rule 6: Unexpected Shutdown
diagnose(power_or_overheating_problem) :-
    symptom(unexpected_shutdown),
    symptom(overheating).

% ----------- SOLUTIONS -------------------

solution(power_issue,
         'Check the power cable, charger, battery and power supply.').

solution(cooling_problem,
         'Clean the cooling vents and fan and ensure proper ventilation.').

solution(storage_problem,
         'Free disk space by removing unnecessary files and programs.').

solution(network_problem,
         'Restart the network adapter and check the Wi-Fi configuration.').

solution(battery_problem,
         'Check battery health and consider replacing the battery if required.').

solution(power_or_overheating_problem,
         'Check the cooling system and power supply for possible faults.').

% ----------- DISPLAY DIAGNOSIS -----------

show_diagnosis(Problem) :-
    solution(Problem, Advice),
    format('~nPossible Problem: ~w~n', [Problem]),
    format('Recommended Solution: ~w~n', [Advice]).

% ----------- CLEAR SYMPTOMS -------------

clear_symptoms :-
    retractall(symptom(_)),
    write('All symptoms have been cleared.'), nl.

% ----------- START SYSTEM ---------------

start :-
    write('=========================================='), nl,
    write(' COMPUTER TROUBLESHOOTING EXPERT SYSTEM'), nl,
    write('=========================================='), nl,
    write('Knowledge Base Loaded Successfully.'), nl,
    write('Use assertz(symptom(...)) to enter symptoms.'), nl,
    write('Use diagnose(X) to identify the problem.'), nl,
    write('Use show_diagnosis(X) to display the solution.'), nl,
    write('=========================================='), nl.