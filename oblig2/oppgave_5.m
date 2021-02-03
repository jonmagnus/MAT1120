A = pascal(6);
p = poly(A);

disp("Egenverdiene til A er ");
disp(eig(A));
fprintf("sdrot gir %f som storste egenverdi\n", sdrot(p));