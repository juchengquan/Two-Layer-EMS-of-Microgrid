month = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
i = 1;
newMatrix = [];
while (i<= 12)
	filename = ['datasets/emcsg_usep/' , 'USEP_', month(3*i-2:3*i), '-2014', '.csv'];
	jan_data = xlsread(filename);
    j = 1;
    summation = 0;

   while (j <= size(jan_data,1))
       if rem(j,2) == 1
          summation =summation +  jan_data(j,2:3);
       else
           summation =summation +  jan_data(j,2:3);
           newMatrix = [newMatrix ; summation/2];
           summation = 0;
       end
	j = j+1;
    end
    i = i+1;
end
newMatrix(:,1) = newMatrix(:,1) ./1000;
xlswrite('datasets/USEP_2014.xlsx',newMatrix);

