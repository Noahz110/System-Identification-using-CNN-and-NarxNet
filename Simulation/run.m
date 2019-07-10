%delay=1;
Tmax=500
for i = 30000:30050
    
thongsoCNN
sim('CNN')
drawfigureCNNLam
%delay=delay+1;
end