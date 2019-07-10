count = size(t,2)
createfigure1(t',y,t(count)-t',y(count)-y,t(count))
set(gcf,'PaperPosition',[.25 .25 1 1])
print('test2','-dpng','-r0')
close