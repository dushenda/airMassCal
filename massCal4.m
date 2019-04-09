function y = massCal4(x)
%函数调用格式：airMass=massCal1(gamma)
%输入参数说明：gamma是高度角，单位是°
%输出参数说明：airMass是大气质量
gamma = 90-x;
y = (cos(pi*gamma/180)+0.15*(93.885-gamma).^(-1.253)).^(-1);
end