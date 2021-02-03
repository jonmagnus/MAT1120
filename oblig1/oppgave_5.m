disp(Walk(.15,.5,.35));

function y = Walk(p2,p3,p4)
    if (p2 <= 0 || p2 >= 1 || ...
            p3 <= 0 || p2 >= 1 || ...
            p4 <= 0 || p4 >= 1)
        y = zeros(3,1);
    else
        q2 = 1 - p2;
        q3 = 1 - p3;
        A = [  1, -q2,   0;
             -q3,   1, -q3;
               0, -p4,   1];
        b = [p2;0;0];
        y = A^(-1)*b;
    end
end