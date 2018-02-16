%function U = control(X, Xd)
function U = control(qc, qd)

% control calculation using dynamic inversion approach
parameters;

q_cal=qc(1:4,:); % Quaternion calculated
q_des=qd(1:4,1); %Quaternion desired

omegad=[0 ;0; 0]; %omega desired
omega=qc(6:8,:); %Omega calculated

q_err= quatmultiply(quatconj(q_des'),q_cal');  %error between Quaternion desired and Quaternion calculated
q_err=q_err'; % Converting to column matrix from row matrix

%Rotation Matrix
R_x=[q_err(1)^2+q_err(2)^2-q_err(3)^2-q_err(4)^2
    2*(q_err(2)*q_err(3)+q_err(1)*q_err(4))
    2*(q_err(2)*q_err(4)-q_err(1)*q_err(3))];
R_y=[2*(q_err(2)*q_err(3)-q_err(1)*q_err(4))
    q_err(1)^2-q_err(2)^2+q_err(3)^2-q_err(4)^2
    2*(q_err(3)*q_err(4)+q_err(1)*q_err(2))];
R_z=[2*(q_err(2)*q_err(4)+q_err(1)*q_err(3))
    2*(q_err(3)*q_err(4)-q_err(1)*q_err(2))
    q_err(1)^2-q_err(2)^2-q_err(3)^2-q_err(4)^2];
R=[R_x R_y R_z];

%Calculating error between Omega_desired and Omega_calculated
omega_err=omega-R*omegad;

%Gain matrices
Kw=[kw 0 0
    0 kw 0
    0 0 kw];
Kq=[kq 0 0
    0 kq 0
    0 0 kq];

%Calculating Moment
U=-q_err(1,:)*Kq*q_err(2:4,:)-Kw*omega_err;


