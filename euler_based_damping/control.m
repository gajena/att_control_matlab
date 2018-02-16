function U = control(X, Xd)

% control calculation using dynamic inversion approach
% X = [theta,q]; State Definition
parameters;

zitaryt = 0.7;
wnryt   = 10;


psi = X(1,:);
psi_dot = X(2,:);

theta = X(3,:);
theta_dot = X(4,:);
phi = X(5,:);



phi_dot = X(6,:);

psi_d = Xd(:,1);
theta_d = Xd(:,2);
phi_d = Xd(:,3);

psid_dot = 0;
psid_ddot =0;

thetad_dot = 0;
thetad_ddot =0;

phid_dot = 0;
phid_ddot =0;
           
psi_ddot = psid_ddot + 2*zitaryt*wnryt*(psid_dot-psi_dot) + wnryt^2*(psi_d-psi);       
theta_ddot = thetad_ddot + 2*zitaryt*wnryt*(thetad_dot-theta_dot) + wnryt^2*(theta_d-theta);      
phi_ddot = phid_ddot + 2*zitaryt*wnryt*(phid_dot-phi_dot) + wnryt^2*(phi_d-phi);                

U(1,:) = Ixx*psi_ddot;
U(2,:) =Iyy*theta_ddot;
U(3,:) =Izz*phi_ddot;



