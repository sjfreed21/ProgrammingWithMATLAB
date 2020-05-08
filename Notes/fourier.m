solar = xlsread('GHI_Boulder_2009_2018.csv');
solar = solar/max(solar);
wind = xlsread('WindSpeed_Boulder_2007_2012.csv');
wind = wind/max(wind);
figure(1);
plotfourier(solar,24,'Solar');
figure(2);
plotfourier(wind,24,'Wind');