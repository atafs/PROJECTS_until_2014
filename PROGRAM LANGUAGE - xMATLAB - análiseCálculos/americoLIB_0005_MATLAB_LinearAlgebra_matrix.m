%matrix
a = [2 3; 4 5];
b = [1 2; 1 2];

%view matrix
a 
b

%calculate
a * b
disp(a)

sum(a)%sum column(1: column)
sum(a, 2)%sum row(2: row)

%matrix
data1 = [34 1 0 0 2 1; 34 34 67 23 89 54];
disp(data1)
data1(:, 1)%select COLUMN1
data1(2, :)%select ROW2

mean(data1)%average
mean(data1, 2)

disp(data1)
data1(:, 1) == 34%how many zero are in COLUMN1
data1(data1(:, 1) == 34)
mean(data1(data1(:, 1) == 34))

