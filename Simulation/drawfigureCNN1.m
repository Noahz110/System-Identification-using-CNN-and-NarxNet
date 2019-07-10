Name1 = sprintf('%s%d','F',i);
Name2 = sprintf('%s%d','FD',i);
Name3 = sprintf('%s%d','S',i);
Name4 = sprintf('%s%d','SD',i);
Name5 = sprintf('%s%d','D',i);
Name6 = sprintf('%s%d','DD',i);
Name7 = sprintf('%s%d','FN',i);
Name8 = sprintf('%s%d','FDN',i);
Name9 = sprintf('%s%d','SN',i);
Name10 = sprintf('%s%d','SDN',i);
Name11 = sprintf('%s%d','DN',i);
Name12 = sprintf('%s%d','DDN',i);
Name13 = sprintf('%s%d','T',i);
Name14 = sprintf('%s%d','TN',i);
Name15 = sprintf('%s%d','TD',i);
Name16 = sprintf('%s%d','TDN',i);
Name17 = sprintf('%s%d','DT',i);
Name18 = sprintf('%s%d','DTN',i);
Name19 = sprintf('%s%d','DTD',i);
Name20 = sprintf('%s%d','DTDN',i);


%bac1
createfigure(Bac1.time/Tmax, Bac1.signals.values/kbac1, 2-Bac1.time/Tmax);
set(gcf,'PaperPosition',[.25 .25 1 1])
print(Name1,'-dpng','-r0')
close
%bac1tre
createfigure(Bac1tre.time/Tmax, Bac1tre.signals.values/kbac1, 2-Bac1tre.time/Tmax);
set(gcf,'PaperPosition',[.25 .25 1 1])
print(Name2,'-dpng','-r0')
close
%bac2
createfigure(Bac2.time/Tmax, Bac2.signals.values/kbac2, 2-Bac2.time/Tmax);
set(gcf,'PaperPosition',[.25 .25 1 1])
print(Name3,'-dpng','-r0')
close
%bac2tre
createfigure(Bac2tre.time/Tmax, Bac2tre.signals.values/kbac2, 2-Bac2tre.time/Tmax);
set(gcf,'PaperPosition',[.25 .25 1 1])
print(Name4,'-dpng','-r0')
close
%daodong
createfigure(Daodong.time/Tmax, (Daodong.signals.values+delta)/kmax, 2-Daodong.time/Tmax);
set(gcf,'PaperPosition',[.25 .25 1 1])
print(Name5,'-dpng','-r0')
close
%daodongtre
createfigure(Daodongtre.time/Tmax, (Daodongtre.signals.values+delta)/kmax, 2-Daodongtre.time/Tmax);
set(gcf,'PaperPosition',[.25 .25 1 1])
print(Name6,'-dpng','-r0')
close

%bac1nhieu
createfigure(Bac1nhieu.time/Tmax, Bac1nhieu.signals.values/kbac1, 2-Bac1nhieu.time/Tmax);
set(gcf,'PaperPosition',[.25 .25 1 1])
print(Name7,'-dpng','-r0')
close
%bac1trenhieu
createfigure(Bac1trenhieu.time/Tmax, Bac1trenhieu.signals.values/kbac1, 2-Bac1trenhieu.time/Tmax);
set(gcf,'PaperPosition',[.25 .25 1 1])
print(Name8,'-dpng','-r0')
close
%bac2nhieu
createfigure(Bac2nhieu.time/Tmax, Bac2nhieu.signals.values/kbac2, 2-Bac2nhieu.time/Tmax);
set(gcf,'PaperPosition',[.25 .25 1 1])
print(Name9,'-dpng','-r0')
close
%bac2trenhieu
createfigure(Bac2trenhieu.time/Tmax, Bac2trenhieu.signals.values/kbac2, 2-Bac2trenhieu.time/Tmax);
set(gcf,'PaperPosition',[.25 .25 1 1])
print(Name10,'-dpng','-r0')
close
%daodongnhieu
createfigure(Daodongnhieu.time/Tmax, (Daodongnhieu.signals.values+delta)/kmax, 2-Daodongnhieu.time/Tmax);
set(gcf,'PaperPosition',[.25 .25 1 1])
print(Name11,'-dpng','-r0')
close
%daodongtrenhieu
createfigure(Daodongtrenhieu.time/Tmax, (Daodongtrenhieu.signals.values+delta)/kmax, 2-Daodongtrenhieu.time/Tmax);
set(gcf,'PaperPosition',[.25 .25 1 1])
print(Name12,'-dpng','-r0')
close

%bac3
createfigure(Bac3.time/Tmax, Bac3.signals.values/k, 2-Bac3.time/Tmax);
set(gcf,'PaperPosition',[.25 .25 1 1])
print(Name13,'-dpng','-r0')
close
%Bac3nhieu
createfigure(Bac3nhieu.time/Tmax, Bac3nhieu.signals.values/k, 2-Bac3nhieu.time/Tmax);
set(gcf,'PaperPosition',[.25 .25 1 1])
print(Name14,'-dpng','-r0')
close
%Bac3tre
createfigure(Bac3tre.time/Tmax, Bac3tre.signals.values/k, 2-Bac3tre.time/Tmax);
set(gcf,'PaperPosition',[.25 .25 1 1])
print(Name15,'-dpng','-r0')
close
%Bac3trenhieu
createfigure(Bac3trenhieu.time/Tmax, Bac3trenhieu.signals.values/k, 2-Bac3trenhieu.time/Tmax);
set(gcf,'PaperPosition',[.25 .25 1 1])
print(Name16,'-dpng','-r0')
close
%Daodongbac3
delta3= max(Daodongbac3.signals.values)-k;
hmax=k+2*delta3;
createfigure(Daodongbac3.time/Tmax, (Daodongbac3.signals.values+delta3)/hmax, 2-Daodongbac3.time/Tmax);
set(gcf,'PaperPosition',[.25 .25 1 1])
print(Name17,'-dpng','-r0')
close
%Daodongbac3nhieu
createfigure(Daodongbac3nhieu.time/Tmax, (Daodongbac3nhieu.signals.values+delta3)/hmax, 2-Daodongbac3nhieu.time/Tmax);
set(gcf,'PaperPosition',[.25 .25 1 1])
print(Name18,'-dpng','-r0')
close
%Daodongbac3tre
createfigure(Daodongbac3tre.time/Tmax, (Daodongbac3tre.signals.values+delta3)/hmax, 2-Daodongbac3tre.time/Tmax);
set(gcf,'PaperPosition',[.25 .25 1 1])
print(Name19,'-dpng','-r0')
close
%Daodongbac3trenhieu
createfigure(Daodongbac3trenhieu.time/Tmax, (Daodongbac3trenhieu.signals.values+delta3)/hmax, 2-Daodongbac3trenhieu.time/Tmax);
set(gcf,'PaperPosition',[.25 .25 1 1])
print(Name20,'-dpng','-r0')
close