%{
clear, clc

% R-C Pasa altos 

C = 0.1*10^-6;
R = 1000;
Num = [1 0];
Den = [1 1/(R*C) ]
G = tf( Num, Den)
bode(G)
%}


%{
clear, clc

% R-C Pasa bajos 

C = 0.1*10^-6;
R = 1000;
Num = [ 1/(R*C) ];
Den = [1 1/(R*C)]
G = tf( Num, Den)
bode(G)
%}

%{
clear, clc

% R-C Pasa banda

C = 0.1*10^-6;
R = 1000;
k = 1;

Num = [ k/(R*C) 0 ];
Den = [ 1 2/(R*C) 1/(R*C)^2]
G = tf( Num, Den)
bode(G)
%}

%{
clear, clc

% R-C Pasa banda distintos componentes

C1 = 0.1*10^-6;
R1 = 8000;
C2 = 0.01*10^-6;
R2 = 2000;

k = 1;

Num = [ k/(R1*C1) 0 ];
Den = [ 1 ((R1*C1+R2*C2)/(R1*C1*R2*C2)) 1/(R1*C1*R2*C2)]
G = tf( Num, Den)
bode(G)
%}


clear, clc

% R-C rechaza banda (Notch) distintos componentes

C1 = 0.1*10^-6;
R1 = 8000;
C2 = 0.1*10^-6;
R2 = 2000;

Num = [ C1*C2*R1*R2 2*C2*R2 1 ];
Den = [ C1*C2*R1*R2 C1*R1+C2*R2 1 ]
G = tf( Num, Den)
bode(G)


%{
clear, clc

% R-L-C Pasa bajos

C = 0.1*10^-6;
L = 1*10^-3;
R = 1.23;

Num = [ 1/(L*C) ];
Den = [ 1 R/L 1/(L*C) ]
G = tf( Num, Den)
bode(G)

%}

%{
clear, clc

% L-C Pasa bajos amortiguado

C = 0.1*10^-6;
RD = 100;
CD = 0.4*10^-6;
L = 1*10^-3;

Num = [ RD*CD 1 ];
Den = [ C*CD*L*RD C*L+CD*L RD*CD 1 ]
G = tf( Num, Den)
bode(G)
%}
