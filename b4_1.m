syms t1 t2 t3 pi;
syms L1 L2 L3 L4 L5 L6 s;
T1=[ 1 0 0 L2;
    0 1 0 L1;
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
R2=[ cos(t2) 0 -sin(t2) 0;
    0 1 0 0;
    sin(t2) 0 cos(t2) 0;
    0 0 0 1];
T3=[ 1 0 0 0;
    0 1 0 0;
    0 0 1 (L4+L5+s);
    0 0 0 1];
R3=[ cos(t3) 0 -sin(t3) 0;
    0 1 0 0;
    sin(t3) 0 cos(t3) 0;
    0 0 0 1];
T4=[ 1 0 0 0;
    0 1 0 0;
    0 0 1 L6;
    0 0 0 1];
temp=[0;
      0;
      0;
      1];
  simplify(T1*R1*T2*R2*T3*R3*T4*temp)
L1=10; L2=20; L3=30; L4=70; L5=60; L6=40;
for t1=0:0.1:pi*2
    for t2=0:0.1:pi/2
        for t3=0:0.1:pi/2
            for s=0:1:5
                x =   L2 - L6*sin(t2 + t3)*cos(t1) - cos(t1)*sin(t2)*(L4 + L5 + s);
                y =    L1 - L6*sin(t2 + t3)*sin(t1) - sin(t1)*sin(t2)*(L4 + L5 + s);
                z =   L3 + L6*cos(t2 + t3) + cos(t2)*(L4 + L5 + s);
                plot3(x,y,z,'*');
                hold on 
            end
        end
    end
end