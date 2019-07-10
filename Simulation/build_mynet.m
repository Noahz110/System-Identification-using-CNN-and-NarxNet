%data2 = iddata(y,u,Ta)
%nk = delayest(data2,2,2,0,1001)
net1=network(1,1,0,[1],0,1)
net1.layers{1}.dimensions=1
net1.outputs{1}.feedbackMode='open'
net1.inputConnect=[1 1]
net1.inputWeights{1,1}.delays=1
net1.inputWeights{1,2}.delays=1
net1.inputs{1}.size=1
net1.SampleTime=5e-6;
net1=closeloop(net1);
view(net1)