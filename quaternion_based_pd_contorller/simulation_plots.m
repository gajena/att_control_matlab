


% state (pitch attitude and its rate)
figure(1)
subplot(2,1,1)
plot(t,X(1,:)*180/pi,'r')
hold on
plot(t,Xd*ones(1,N),'b')
title('X - Instantaneous current and desired position');
xlabel('Time (seconds)') % x-axis label
ylabel('\theta (Deg)') % y-axis label
grid on;

subplot(2,1,2)
plot(t,X(4,:)*180/pi,'r')
hold on
plot(t,zeros(1,N),'b')
title('Y- Instantaneous current and desired rate');
xlabel('Time (seconds)') % x-axis label
ylabel('\omega_x (Deg/sec)') % y-axis label
grid on;

figure(2)
subplot(2,1,1)
plot(t,X(2,:)*180/pi,'r')
hold on
plot(t,Xd*ones(1,N),'b')
title('Y - Instantaneous current and desired position');
xlabel('Time (seconds)') % x-axis label
ylabel('\phi (Deg)') % y-axis label
grid on;


subplot(2,1,2)
plot(t,X(5,:)*180/pi,'r')
hold on
plot(t,zeros(1,N),'b')
title('Y- Instantaneous current and desired rate');
xlabel('Time (seconds)') % x-axis label
ylabel('\omega_y (Deg/sec)') % y-axis label
grid on;

figure(3)
subplot(2,1,1)
plot(t,X(3,:)*180/pi,'r')
hold on
plot(t,Xd*ones(1,N),'b')
title('Z - Instantaneous current and desired position');
xlabel('Time (seconds)') % x-axis label
ylabel('\psi (Deg)') % y-axis label
grid on;


subplot(2,1,2)
plot(t,X(6,:)*180/pi,'r')
hold on
plot(t,zeros(1,N),'b')
title('Z- Instantaneous current and desired rate');
xlabel('Time (seconds)') % x-axis label
ylabel('\omega_z (Deg/sec)') % y-axis label
grid on;





% Pitching moment
figure(4)
subplot(3,1,1)

plot(t(:,1:N-1),U(1,:),'b')
xlabel('Time (seconds)') % x-axis label
ylabel('Moment_X (Kg meter)') % y-axis label
grid on;
subplot(3,1,2)

plot(t(:,1:N-1),U(2,:),'b')
xlabel('Time (seconds)') % x-axis label
ylabel('Moment_Y (Kg meter)') % y-axis label
grid on;
subplot(3,1,3)
plot(t(:,1:N-1),U(3,:),'b')
xlabel('Time (seconds)') % x-axis label
ylabel('Moment_Z (Kg meter)') % y-axis label
grid on;

