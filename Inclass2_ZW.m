%% Inclass assignment 2

% 1. a. fill in this loop with a conditional statement so that it displays
% only the odd numbers

for ii = 1:20
   if rem(ii/2,1)==0.5;
      disp(ii); 
   end
end

% b. Write a new loop to display the same odd numbers which doesn't use a conditional statement 
for ii=1;
    while ii<20;
        disp(ii);
        ii=ii+1;
    end
end
% c. display the same odd numbers without a loop or conditional (hint use
%  num2str)


%% 2. Vectorize the following code (that is produce the same result in z
%without using a loop). 

%a. 

for ii = 1:100
    z(ii) = ii*ii;
end

ii=1:100; z(ii)=ii.^2

%b. 
z = 0;
for ii = 1:100
    z = z + ii;
end
ii=1:100; y(ii)=(1/2)*(ii).^2+(1/2)*ii
%c.
xx = rand(50,2);

for ii = 1:50
    z(ii) = sqrt(xx(ii,1)^2+xx(ii,x)^2);
end
ii=1:50;
z=sqrt(sum(xx.^2, 2));

% d. what is the formula in c computing?
%the distane of each random point from the origin
%% plotting

%a. make a plot of sin(x) and cos(x) vs x from x = 0 to 4*pi on the same axis where the graph
%of sin(x) vs x is a red-dashed line and the graph of cos(x) vs x is a
%blue solid line.
x=linspace(0, 4*pi); y1=x; y2=sin(x); y3=cos(x); plot(x, y1, x, y2, ':r', x, y3, 'b')
%b. repeat the above but where each graph is in a different subplot in the
% same figure. 
x=linspace(0, 4*pi); y1=x; y2=sin(x); y3=cos(x); plot(x, y1); hold on; plot(x, y2, ':r'); plot(x, y3, 'b')

%c. here is some data, imagine they are x and y coordinates for cells. 
xy_dat = rand(100,2);
%plot the data in the xy plane.
xy_dat=rand(100,2); plot(xy_dat(:,1), xy_dat(:,2))

%now imagine there is some fluorescence data corresponding to the same
%cells
fluor = rand(100,1);
% plot the data in the xy plane but color code the data by the fluorescnece
% values. Hint: see the scatter command
xy_dat=rand(100,2); plot(xy_dat(:,1), xy_dat(:,2)); hold on; fluor=rand(100,1); scatter(xy_dat(:,1), xy_dat(:,2), 50, fluor, 'filled')