% Speed TF S
R = 10;
L = 1;
J = 0.1;
K = 0.1;
u = 0.1;
s = tf('s');
H_motor = K / (s*((J*s + u ) * (L*s + R) + K^2));
display(H_motor);

linearSystemAnalyzer('step', H_motor, 0:0.1:10);


%Kp = 250;
%Ki = 200;
%Kd = 20;
%C = pid(Kp,Ki,Kd);
%sys_dc_s = feedback(C*H_motor,1);
%step(sys_dc_s, 0:0.01:4)
%grid
%title("DC Motor PID after")