function y=massCal2(gamma)
%�������ø�ʽ��airMass=massCal2(gamma)
%�������˵����gamma���춥�ǣ���λ�ǡ�
%�������˵����airMass�Ǵ�������
a=0.50572;b=6.07995;c=1.6364;
y=(sin(gamma*pi/180)+a*(gamma+b).^(-c)).^(-1);
end