
% state (yaw attitude and its rate)
figure(1)
subplot(2,1,1)
plot(t,X(1,:)*180/pi,'r')
hold on
plot(t,Xd(:,1)*ones(1,N),'b')
title('X - Instantaneous current and desired position');
xlabel('Time (seconds)') % x-axis label
ylabel('\phi (Deg)') % y-axis label
grid on;

subplot(2,1,2)
plot(t,X(2,:)*180/pi,'r')
hold on
plot(t,zeros(1,N),'b')
title('Y- Instantaneous current and desired rate');
xlabel('Time (seconds)') % x-axis label
ylabel('r (Deg/sec)') % y-axis label
grid on;

% Yawing moment
figure(2)
plot(t(:,1:N-1),U(1,:),'b')
xlabel('Time (seconds)') % x-axis label
ylabel('Yawing Moment (Kg meter)') % y-axis label
grid on;


% state (Pitch attitude and its rate)
figure(3)
subplot(2,1,1)
plot(t,X(3,:)*180/pi,'r')
hold on
plot(t,Xd(:,2)*ones(1,N),'b')
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
ylabel('p (Deg/sec)') % y-axis label
grid on;

% Pitching moment
figure(4)
plot(t(:,1:N-1),U(2,:),'b')
xlabel('Time (seconds)') % x-axis label
ylabel('Pitching Moment (Kg meter)') % y-axis label
grid on;


% state (roll attitude and its rate)
figure(5)
subplot(2,1,1)
plot(t,X(5,:)*180/pi,'r')
hold on
plot(t,Xd(:,3)*ones(1,N),'b')
title('X - Instantaneous current and desired position');
xlabel('Time (seconds)') % x-axis label
ylabel('\psi (Deg)') % y-axis label
grid on;

subplot(2,1,2)
plot(t,X(2,:)*180/pi,'r')
hold on
plot(t,zeros(1,N),'b')
title('Y- Instantaneous current and desired rate');
xlabel('Time (seconds)') % x-axis label
ylabel('q (Deg/sec)') % y-axis label
grid on;

% Rolling moment
figure(6)
plot(t(:,1:N-1),U(3,:),'b')
xlabel('Time (seconds)') % x-axis label
ylabel('Rolling Moment (Kg meter)') % y-axis label
grid on;
