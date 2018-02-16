function XX_dot = state_fun(t, XX)

X(1:6,:) = XX(1:6,:);

U(1,:) = XX(7:7,:);
U(2,:) = XX(8:8,:);
U(3,:) = XX(9:9,:);


parameters;


X_dot = [X(2)
          U(1,:)/Ixx ; X(4) 
          U(2,:)/Iyy;X(6) 
          U(3,:)/Izz];
          
XX_dot = [ X_dot
           zeros(3,1) ];
end