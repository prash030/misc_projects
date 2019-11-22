% Kaprekar's constant = 6174 for 4 digit. Most of the 4 digit numbers if you split the
% digits, then sort them in ascending and descending order, then subtract
% the large from the small number, then split the result, then repeat
% the same process for the split digits, you will arrive at the constant
% 6174. Run this program and try it! You can also try it for three digits
% etc.

% written by Prasanth Ganesan <prasganesan.pg@gmail.cpm>
% created on 05/18/2018

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

num = [9 8 7 5];
result = [];
k=2;
while 1
    sorted = [sort(num,2,'descend'); sort(num,2,'ascend')];
    joined_num=[];
    for temp=1:size(sorted,1)
        strtemp = num2str(sorted(temp,:));
        joined_num(temp,:) = str2double(strtemp(strtemp~=' '));
    end
    result(k) = max(joined_num)-min(joined_num);
   
    %disp(result(2:end))
    if isequal(result(k),result(k-1))
        disp(['Iterations: ' num2str(k)])
        disp(['Final Number: ' num2str(result(k))])
        break
    end
    num = str2double(regexp(num2str(result(k)),'\d','match'));
    k=k+1;
    if k > 10000
        disp('Iterations exceeded maximum')
        break
    end
end
