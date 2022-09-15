syms t1 t2 t3 t4 pi;
syms L1 L2 L3 L4 L5 L6;
T1=[ 1 0 0 L1;
    0 1 0 0;
    0 0 1 0;
    0 0 0 1];
R1=[ cos(t1) -sin(t1) 0 0;
    sin(t1) cos(t1) 0 0;
    0 0 1 0;
    0 0 0 1];
T2=[ 1 0 0 0;
    0 1 0 0;
    0 0 1 L3;
    0 0 0 1];
R2=[ 1 0 0 0;
    0 cos(t2) -sin(t2) 0;
    0 sin(t2) cos(t2) 0;
    0 0 0 1];
T3=[ 1 0 0 L2;
    0 1 0 0;
    0 0 1 L4;
    0 0 0 1];
R3=[ 1 0 0 0;
    0 cos(t3) -sin(t3) 0;
    0 sin(t3) cos(t3) 0;
    0 0 0 1];
T4=[ 1 0 0 0;
    0 1 0 0;
    0 0 1 L5;
    0 0 0 1];
R4=[ 1 0 0 0;
    0 cos(t4) -sin(t4) 0;
    0 sin(t4) cos(t4) 0;
    0 0 0 1];
T5=[ 1 0 0 0;
    0 1 0 0;
    0 0 1 L5;
    0 0 0 1];
temp=[0;
      0;
      0;
      1];
  simplify(T1*R1*T2*R2*T3*R3*T4*temp)
L1=60; L2=10; L3=30; L4=70; L5=40; L6=30;
for t1=0:0.1:pi*2
    for t2=0:0.1:pi/2
        for t3=0:0.1:pi/2
            x =   L1 + L5*(cos(t2)*sin(t1)*sin(t3) + cos(t3)*sin(t1)*sin(t2)) + L2*cos(t1) + L4*sin(t1)*sin(t2);
            y =    L2*sin(t1) - L5*(cos(t1)*cos(t2)*sin(t3) + cos(t1)*cos(t3)*sin(t2)) - L4*cos(t1)*sin(t2);
            z =   L3 + L5*cos(t2 + t3) + L4*cos(t2);
            plot3(x,y,z,'*');
            hold on         
        end
    end
end