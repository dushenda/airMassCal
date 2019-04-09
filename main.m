clear;clc;
%x�Ĳ���ѡȡ
x1=0:0.1:20;
x2=20.2:0.2:30;
x3=30.5:0.5:55;
x4=56:1:90;
x=[x1,x2,x3,x4];
%����Latxe�ַ�
gamma=texlabel('gamma');flambda=texlabel('f(lambda)');
txt = texlabel('f(lambda)=[sin gamma+a(gamma+b)^{-c}]^{-1}');
%�����׼���ݣ�����׼����ͼ��
data=xlsread('datain.xlsx');
datax=data(:,1);px=datax;
datay=data(:,2);py=datay;
subplot(2,1,1)
plot(datax,datay);grid on;box off;
xlabel(['�߶Ƚ�',gamma]);ylabel({'��׼����Դ�������';flambda});
% print('Standard','-deps');
%�����������㺯��
airMass1=massCal1(x);
airMass2=massCal2(x);
airMass3=massCal3(x);
airMass4=massCal4(x);
subplot(2,1,2)
plot(datax,airMass4);
xlabel(['�߶Ƚ�',gamma]);ylabel({'������ʽ�������Դ�������';flambda});
suptitle('��Դ���������߶ȽǵĹ�ϵ');grid on;box off

figure(2);
set(figure(2),'PaperSize',[42,60]);
suptitle(['\fontsize{14}',txt]);
subplot(3,1,1)
plot(x,airMass1);grid on;box off;
text(60,30,'a=0.1500,b=3.885,c=1.253');
xlabel(['�߶Ƚ�',gamma]);ylabel({'�������Դ�������';flambda});
subplot(3,1,2)
plot(x,airMass2);grid on;box off;
text(60,30,'a=0.50572,b=6.07995,c=1.6364');
xlabel(['�߶Ƚ�',gamma]);ylabel({'�������Դ�������';flambda});
subplot(3,1,3)
plot(x,airMass3);grid on;box off;
text(60,30,'a=0.6556,b=6.379,c=1.757');
xlabel(['�߶Ƚ�',gamma]);ylabel({'�������Դ�������';flambda});
set(gcf, 'position', [1920/4 1080/4 1920/2 1080/1.5]);
% print('Calculate','-deps');
%�������������������
datay=datay';
delta1 = (airMass1-datay)./datay*100;
delta2 = (airMass2-datay)./datay*100;
delta3 = (airMass3-datay)./datay*100;
delta4 = (airMass4-datay)./datay*100;
figure(3)
plot(x,delta1);grid on;box off;hold on
plot(x,delta2,'--');grid on;box off;hold on
plot(x,delta3,':');grid on;box off;hold on
plot(x,delta4);grid on;box off;
xlabel(['�߶Ƚ�',gamma]);ylabel('���ִ������������(%)');
legend('��1�����ϵ��','��2�����ϵ��','��3�����ϵ��','������ʽ����');
title('���ּ��㷽�������');
% print('Error','-deps');
figure(4)
plot(datax,datay);grid on;box off;hold on
plot(x,airMass1);grid on;box off;hold on
plot(x,airMass2);grid on;box off;hold on
plot(x,airMass3);grid on;box off;hold on
plot(x,airMass4);grid on;box off;
xlabel(['�߶Ƚ�',gamma]);ylabel('��Դ�������');
legend('ʵ�ʵ�','����1','����2','������','��������');
title('���ַ�����ʵ�ʵ���Դ�������');

[~,Date,~] = xlsread('1.xlsx','A2:A105');
Date = datetime(Date,'InputFormat','dd/MM/yyyy');
Date.Format = 'yyyy-MM-dd';
Time = days(xlsread('1.xlsx','B2:B105'));
Time.Format = 'hh:mm:ss';
datetime = Date+Time;
datetime.Format = 'yyyy-MM-dd hh:mm:ss';
xxx=xlsread('1.xlsx','C2:C105');
xx=90-xxx;
airMassx1=massCal1(xx);
airMassx2=massCal2(xx);
airMassx3=massCal3(xx);
airMassx4=massCal4(xx);
output=[airMassx1,airMassx2,airMassx3,airMassx4];
xlswrite('output.xlsx',output);

figure
datetime = datenum(datetime);
plot(datetime,airMassx1);grid on;box off;hold on
plot(datetime,airMassx2);grid on;box off;hold on
plot(datetime,airMassx3);grid on;box off;hold on
plot(datetime,airMassx4);grid on;box off;hold on
dateFormat = 'yy-mm-dd HH:MM:SS';
datetick('x',dateFormat)
%plot(px,py);grid on;box off;
legend('���㷽��1','���㷽��2','���㷽��3','�������������');
xlabel('ʱ��');ylabel('��������');
title('�¸������ݵĸ߶ȽǼ����ֵ')

p = (x>10);
x = x(p);
delta1 = delta1(p);
delta2 = delta2(p);
delta3 = delta3(p);
delta4 = delta4(p);
figure
plot(x,delta1);hold on
plot(x,delta2);hold on
plot(x,delta3);hold on
plot(x,delta4);grid on;box off;
xlabel('�߶Ƚ�');ylabel('������������ƫ��');
title('�߶Ƚ� >10�� ʱ������������ƫ��');
legend('���ϵ��1','���ϵ��2','���ϵ��3','��ʽ����');

figure
subplot(2,1,1)
plot(x,delta1);box off;grid on
xlabel('�߶Ƚ�');ylabel('������������ƫ��');
title('���ϵ��1����');
subplot(2,1,2)
plot(x,delta4);box off;grid on
xlabel('�߶Ƚ�');ylabel('������������ƫ��');
title('��ʽ����');
suptitle('�߶Ƚ� >10�� ʱ������������ƫ��')