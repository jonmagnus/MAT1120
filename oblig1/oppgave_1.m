k = [2;3;4;50;100];
P = [1, .7, 0,  0,  0;
     0, 0,  .5, 0,  0;
     0, .3, 0,  .6, 0;
     0, 0,  .5, 0,  0;
     0, 0,  0,  .4, 1];
 
 for i = 1:5
     disp("Sansynlighet for overganger ved " + k(i) + " steg.");
     disp("P^k =");
     A = P^k(i);
     disp(A);
     disp("Sannsynligheten for en overgang fra s4 til s2 gjennom " + ... 
         k(i) + " steg er " + A(2,4) + newline);
 end