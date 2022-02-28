function Y=ss_dtmf(number,dt,nd,np)
Td = nd.*dt;
Tp = np.*dt;
fs = 8000;
Ts = 1/fs;
t1 = [0:Ts:2*Td+Tp];
for i=1:length(number)
	if (number(i)>=0 & number(i)<=12)
		if (i==1)
			Y = [ss_dtmf1(number(1),Td,Ts)];
		else
			Y = [Y ; ss_dtmf1(12,Tp,Ts) ; ss_dtmf1(number(i),Td,Ts)];
		end
	end
end