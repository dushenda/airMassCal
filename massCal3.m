function y=massCal3(gamma)
%�������ø�ʽ��airMass=massCal(gamma)
%�������˵����gamma���춥�ǣ���λ�ǡ�
%�������˵����airMass�Ǵ�������
a=0.6556;b=6.379;c=1.757;
y=(sin(gamma*pi/180)+a*(gamma+b).^(-c)).^(-1);
end