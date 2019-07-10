
[Xs,Xi,Ai,Ts] = preparets(net1,X,{},T);
net1.trainFcn='trainlm';
net1.performFcn = 'mse';
[net1,tr] = train(net1,Xs,Ts,Xi,Ai);
view(net1)
outputs = net1(Xs,Xi,Ai);
errors = gsubtract(Ts,outputs);
performance = perform(net1,Ts,outputs);
plotperform(tr)
figure
plot([T{:}],'b')
% plot([Ts{:}],'b')
hold on;
%outputs2=[num2cell(zeros(1,nk)) Ai{:} outputs{:}];
plot([Ai{:} outputs{:}],'r--')
%plot([outputs2{:}],'r--')
figure
plot([errors{:}])