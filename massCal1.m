function y=massCal1(gamma)
%�������ø�ʽ��airMass=massCal1(gamma)
%�������˵����gamma�Ǹ߶Ƚǣ���λ�ǡ�
%�������˵����airMass�Ǵ�������
a=0.1500;b=3.885;c=1.253;
% gamma=gamma*pi/180;%b=b*pi/180;
y=(sin(gamma*pi/180)+a*(gamma+b).^(-c)).^(-1);
end