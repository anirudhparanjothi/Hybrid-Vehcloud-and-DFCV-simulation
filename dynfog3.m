  data = xlsread('dynfog6.xlsx');

          first_column = data(:,1);
          second_column = data(:,2);
          third_column = data(:,3);
          fourth_column = data(:,4);
          fifth_column = data(:,5);

          % for example for a list of points with x values in the first column
          % and y values in the second column, you would use:

          data = xlsread('dynfog6.xlsx'); % two columns of data

          xs = data(:,1);
          ys = data(:,2);
          ys1 = data(:,3);
          ys2 = data(:,4);
          ys3 = data(:,5);
          
          % and for example you might want to plot this data:

         p = plot(xs,ys,'-r',xs,ys1,'-.b',xs,ys2,':k',xs,ys3,'--m');
         xlim([40 200])
         ylim ([0 0.50])
         
  p(1).LineWidth = 1.5;
  p(2).LineWidth = 1.5;
  p(3).LineWidth = 1.5;
  p(4).LineWidth = 1.5;
  
  p(1).Marker = '*';
  p(2).Marker = 'd';
  p(3).Marker = 's';
  p(4).Marker = 'o';
  
  p(1).MarkerFaceColor = 'r';
  p(2).MarkerFaceColor = 'b';
  p(3).MarkerFaceColor = 'k';
  p(4).MarkerFaceColor = 'm';
 
  p(1).MarkerSize = 5;
  p(2).MarkerSize = 5;
  p(3).MarkerSize = 5;
  p(4).MarkerSize = 5;
  
  
  
legend('GSTR','T-GPSR','GPSR','GTLR','Location','Northwest');  
xlabel('Number of Nodes'), ylabel('Average End-to-End delay (s)');