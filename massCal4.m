function y = massCal4(x)
%�������ø�ʽ��airMass=massCal1(gamma)
%�������˵����gamma�Ǹ߶Ƚǣ���λ�ǡ�
%�������˵����airMass�Ǵ�������
gamma = 90-x;
y = (cos(pi*gamma/180)+0.15*(93.885-gamma).^(-1.253)).^(-1);
end