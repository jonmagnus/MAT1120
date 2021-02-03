P = [1, .7, 0,  0,  0;
     0, 0,  .5, 0,  0;
     0, .3, 0,  .6, 0;
     0, 0,  .5, 0,  0;
     0, 0,  0,  .4, 1];
P = transpose(P);

x = null(P - eye(5));

A = [x(1,1),x(1,2);
     x(5,1),x(5,2)];
b = [1;0];
c = A^(-1)*b;
sol = x*c;

disp("sol = ");
disp(sol);

b = [0;1];
c = A^(-1)*b;
sol = x*c;

disp("sol = ");
disp(sol);