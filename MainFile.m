
clear all, close all, clc

%% User Input

    % Task
    % 1 - G
    % 2 - G0
    tt = 1;
    
    % Plots
    % 0 - No Plots
    % 1 - Plots
    pp = 0;

%% The System

s = tf('s');
G = 1e4 * (s+2) / (s+3) / (s+100)^2;
dG = (s-1) / (s+2) - 1;
G0 = minreal( (dG+1) * G );

Hinf(G);

    % WS
    % Gain = 1
    % Poles: s = -0.0001 +- 100*pi        
    % Zeros: No zeros
    
    % WT
    % Gain = 1e-5
    % Poles: s = -1.2
    % Zeros: No zeros
    

%% Simulate the System

Fsim = F;
if tt == 1; Gsim = G; end
if tt == 2; Gsim = G0; end
macro

%% Plots
if pp == 1
T = F*G0/(1+F*G0);
T = minreal(T);

figure
bode(T);
hold on
bode(1/dG);
legend('T','1/dG')
end







