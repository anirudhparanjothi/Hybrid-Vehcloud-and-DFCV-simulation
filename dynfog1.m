   data = xlsread('cloud3.2.xlsx');

          first_column = data(:,1);
          second_column = data(:,2);
          third_column = data(:,3);
         
          
          

          % for example for a list of points with x values in the first column
          % and y values in the second column, you would use:

          data = xlsread('graph 1_new.xlsx'); % two columns of data

          xs = data(:,1);
          ys = data(:,2);
          ys1 = data(:,3);
          ys2 = data(:,4);
      
          
          x = linspace(0,20); 

          % and for example you might want to plot this data:

         p = plot(xs,ys,'-b',xs,ys1,':g',xs,ys2,'-.r');
         xlim([2 10])
         ylim ([5 10])
   p(1).LineWidth = 1.5;
  p(2).LineWidth = 1.5;
  p(3).LineWidth = 1.5;
 
  p(1).Marker = 's';
  p(2).Marker = '*';
  p(3).Marker = '^';
  
  p(1).MarkerFaceColor = 'b';
  p(2).MarkerFaceColor = 'g';
  p(3).MarkerFaceColor = 'r';
 
  p(1).MarkerSize = 5;
  p(2).MarkerSize = 5;
  p(3).MarkerSize = 5;

  
legend('PMCV','Yang Approach','Michelle Approach','Location','Northwest');
xlabel('Platoon Size'), ylabel('Throughput (Mbps)');
