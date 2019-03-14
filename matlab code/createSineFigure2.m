function createSineFigure2()

constant1 = csvread('sinePI2.csv');
constant2 = csvread('sinePID2.csv');

XData1 = constant1(:,1);
XData2 = constant2(:,1);

YData1 = constant1(:, 2);
YData2 = constant1(:, 3);
YData3 = constant2(:, 3);

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1,'FontSize',18);

% Create line
line(XData1,YData1,'Parent',axes1,'DisplayName','R','LineWidth',2,...
    'Color',[0.5 0.5 0.7]);

% Create line
line(XData1,YData2,'Parent',axes1,'DisplayName','PI','LineWidth',2,...
    'Color',[0.7 0.2 0.2]);

% Create line
line(XData2,YData3,'Parent',axes1,'DisplayName','PID','LineWidth',2,...
    'Color',[0.2 0.7 0.2]);

% Create xlabel
xlabel('time (s)','FontSize',20);

% Create ylabel
ylabel('concentration','FontSize',20);

% Create legend
legend1 = legend(axes1,'show');
set(legend1,'FontSize',20);


