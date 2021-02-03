p1 = [1,3,-1,-3,-1,1];
p2 = [1,-2,4,-4];

disp("Rottene til p1 er ");
disp(roots(p1));
fprintf("sdrot(p1) gir %f som rot\n", sdrot(p1));

disp("\n");

disp("Rotten til p2 er ");
disp(roots(p2));
fprintf("sdrot(p2) gir %f som rot\n", sdrot(p2));
