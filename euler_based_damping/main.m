% code for attitude control
% using dynamics inversion approach
      
clear all;
close all;
clc;

global dt 

% time information 
t0 = 0;
tf = 20; % seconds
dt = 0.01;% time step
N = floor((tf-t0)/dt) + 1;
t(1,:) = 0;



X       = zeros(6,N);
U       = zeros(3,N-1);
Xd      = [0,0,0];
X(1,1)  = -10*(pi/180);
X(3,1)  = 10*(pi/180);
X(5,1)  = 10*(pi/180); 
%Storing values to eveluate simulations


for k = 1:N-1
    
    
    
    %Desired_control_input = U(1:4,k);

    X(:,k+1) = state(X(:,k), U(:,k)  = control (X(:,k) , Xd(1,:)));
    
     
    % angle adjustment 
    X(1,k+1) = ang_wrap(X(1,k+1));
 
    t(:,k+1) = t(:,k) + dt;   
  
end
% Plotting 
%     plots;
simulation_plots;
    
    
    
    