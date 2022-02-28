function x=ss_dtmf1(key,t,Ts)
t2 = [0:Ts:t];
switch key
	case 0
		f1 = 941;
		f2 = 1336;
	case 1
		f1 = 697;
		f2 = 1209;
	case 2
		f1 = 697;
		f2 = 1336;
	case 3
		f1 = 697;
		f2 = 1477;
	case 4
		f1 = 770;
		f2 = 1209;
	case 5
		f1 = 770;
		f2 = 1336;
	case 6
		f1 = 770;
		f2 = 1477;
	case 7
		f1 = 852;
		f2 = 1209;
	case 8
		f1 = 852;
		f2 = 1336;
	case 9
		f1 = 852;
		f2 = 1477;
	case 10
		f1 = 941;
		f2 = 1209;
	case 11
		f1 = 941;
		f2 = 1477;
	case 12
		f1 = 0;
		f2 = 0;
	otherwise
		error('Invalid input')
		quit
end
DTMFgenerator = @(t) sin(2*pi*f1*t) + sin(2*pi*f2*t);
x = (DTMFgenerator(t2))';
%plot(t2,x);