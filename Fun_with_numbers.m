% Just for fun: Find all three digit numbers that when added to the same
% three times, gives a three digit number of all the digits of the middle
% of the original number. i.e. xyz + xyz + xyz = yyy . You can continue for
% different digit places and different digit numbers such as 4 digit and 5
% digit numbers.

% Written by Prasanth "Prash" Ganesan <prasganesan.pg@gmail.com>
% created on 03/22/2017

x=[1:9];
solutions1 = [];
solutions2 = [];
solutions3 = [];
for i = 1:length(x)
    yfull=(1/3)*str2double(strcat(num2str(x(i)),num2str(x(i)),num2str(x(i))));
    ysep = str2double(regexp(num2str(yfull),'\d','match'));
    if ysep(1) == x(i)
        solutions1 = [solutions1 yfull];
    elseif ysep(2) == x(i)
        solutions2 = [solutions2 yfull];
    elseif length(ysep)>2
        if ysep(3) == x(i)
            solutions3 = [solutions3 yfull];
        end
    end
end
