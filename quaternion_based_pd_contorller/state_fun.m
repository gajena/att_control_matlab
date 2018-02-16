function XX_dot = state_fun(t, XX)


X = XX(1:6,:);
U = XX(7:9,:);

parameters;

%Using Mb=J*omega_dot+omega X (J*omega)
X_dot = [X(4:6,:)
          inv(J)*(U-cross(X(4:6,:),J*X(4:6,:)))];

XX_dot = [ X_dot
           zeros(3,1) ];
end