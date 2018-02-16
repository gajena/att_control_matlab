% code for attitude control
% using dynamics inversion approach
      
clear all;
close all;
clc;

global dt 


% time information 
t0 = 0;
tf = 5;% seconds
dt = 0.01;% time step
N = floor((tf-t0)/dt) + 1;
t(1,:) = 0;

%X(1:3,:)=theta ; X(4:6,:)=theta_dot
X=zeros(6,N); 

%U(1:3,:)=moment x,y and z
U=zeros(3,N-1);

%Angle desired 0,0,0 .Convert it to quaternion. Quaternion desired [1;0;0;0].[0;omega_x;omega_y;omega_z]=qc(5:8,:)
qd=[1; 0; 0; 0;0;0;0;0]; 

%Quaternion calculated=qc(1:4,:), qc_dot=qc(5:8,:)
qc=zeros(8,N);

%Desired angle =roll =pitch=yaw= 100 degree
qc(1:4,1)=angle2quat(100*(pi/180),100*(pi/180),100*(pi/180)); 

%Xd(1:3,:)=theta_desired ; Xd(4:6,:)=theta_dot_desired=[0;0;0]
Xd=zeros(6,1);

%Starting angle =100 degrees
X(1:3,1)=100*(pi/180);

%Storing values to eveluate simulations
for k = 1:N-1
    
    % Desired Control generation using DI   
    U(:,k)  = control (qc(:,k) , qd);
    
    %Desired_control_input = U(1:4,k);
    X(:,k+1) = state(X(:,k), U(:,k));
    
    % angle adjustment 
    X(1:3,k+1) = ang_wrap(X(1:3,k+1));
    
    %angle to quaternion conersion
    qc(1:4,k+1)=angle2quat(X(3,k+1),X(2,k+1),X(1,k+1));
    qc(6:8,k+1)=X(4:6,k+1);
    t(:,k+1) = t(:,k) + dt;   
  
end
% Plotting 
%  plots;
simulation_plots;
    