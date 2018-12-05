clear;clc;
x=0:0.1:90;
airMass1=massCal1(x);
airMass2=massCal2(x);
airMass3=massCal3(x);
txt = texlabel('f(lambda)=[sin gamma+a(gamma+b)^{-c}]^{-1}');
gamma=texlabel('gamma');flambda=texlabel('f(lambda)');
set(figure,'PaperSize',[42,60]);
suptitle(['\fontsize{14}',txt]);
subplot(3,1,1)
plot(x,airMass1);
text(60,30,'a=0.1500,b=3.885,c=1.253');
xlabel(['天顶角',gamma]);ylabel({'计算的相对大气质量';flambda});
subplot(3,1,2)
plot(x,airMass2);
text(60,30,'a=0.50572,b=6.07995,c=1.6364');
xlabel(['天顶角',gamma]);ylabel({'计算的相对大气质量';flambda});
subplot(3,1,3)
plot(x,airMass3);
text(60,30,'a=0.6556,b=6.379,c=1.757');
xlabel(['天顶角',gamma]);ylabel({'计算的相对大气质量';flambda});
set(gcf, 'position', [1920/4 1080/4 1920/2 1080/1.5]);
