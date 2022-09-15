syms t1 t2 t3 pi;
syms L1 L2 L3 L4 L5 L6 L7 s;
T1=[ 1 0 0 0;
    0 1 0 0;
    0 0 1 L1;
    0 0 0 1];
R1=[ cos(t1) -sin(t1) 0 0;
    sin(t1) cos(t1) 0 0;
    0 0 1 0;
    0 0 0 1];
T2=[ 1 0 0 0;
    0 1 0 L4;
    0 0 1 L2;
    0 0 0 1];
R2=[ cos(t2) -sin(t2) 0 0;
    sin(t2) cos(t2) 0 0;
    0 0 1 0;
    0 0 0 1];
T3=[ 1 0 0 0;
    0 1 0 L5;
    0 0 1 L3-L6+s;
    0 0 0 1];
R3=[ cos(t3) -sin(t3) 0 0;
    sin(t3) cos(t3) 0 0;
    0 0 1 0;
    0 0 0 1];
T4=[ 1 0 0 0;
    0 1 0 0;
    0 0 1 L7;
    0 0 0 1];
temp=[0;
      0;
      0;
      1];
  simplify(T1*R1*T2*R2*T3*R3*T4*temp)
L1=70; L2=20; L3=10; L4=40; L5=30; L6=50; L7=25;
for t1=0:0.1:pi*2
    for t2=0:0.1:pi/2
        for t3=0:0.1:pi/2
            for s=0:1:5
                x = -L5*sin(t1 + t2) - L4*sin(t1);
                y = L5*cos(t1 + t2) + L4*cos(t1);
                z = L1 + L2 + L3 - L6 + L7 + s;
                plot3(x,y,z,'*');
                hold on 
            end
        end
    end
end