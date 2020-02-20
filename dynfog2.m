 data = xlsread('dynfog2.xlsx');

          first_column = data(:,1);
          second_column = data(:,2);
          third_column = data(:,3);
          fourth_column = data(:,4);
          fifth_column = data(:,5);
         

          % for example for a list of points with x values in the first column
          % and y values in the second column, you would use:

          data = xlsread('dynfog2.xlsx'); % two columns of data

          xs = data(:,1);
          ys = data(:,2);
          ys1 = data(:,3);
          ys2 = data(:,4);
          ys3 = data(:,5);
          
          x = linspace(0,20); 

          % and for example you might want to plot this data:

         p = plot(xs,ys,'-',xs,ys1,'-r',xs,ys2,'-g',xs,ys3,'m');
         xlim([50 450])
         ylim ([0 5])
         
         p(1).LineWidth = 1.5;
         p(2).LineWidth=1.5;
         p(3).LineWidth=1.5;
         p(4).LineWidth=1.5;
 
   p(1).Marker = 'd';
  p(2).Marker = 'o';
  p(3).Marker = 'o';
  p(4).Marker = '^'
  
  p(1).MarkerFaceColor = 'b';
  p(2).MarkerFaceColor = 'r';
  p(3).MarkerFaceColor = 'g';
  p(4).MarkerFaceColor = 'm';
 
  p(1).MarkerSize = 5;
  p(2).MarkerSize = 5;
  p(3).MarkerSize = 5;
  p(4).MarkerSize = 5;
 
 legend('DFCV','Fog-NDN with mobility','NDN with mobility','PrEPARE','Location','Northwest');  
xlabel('No of vehicles'), ylabel('End-to-End delay (ms)');