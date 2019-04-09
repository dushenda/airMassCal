function airMass = airMass(z)
airMass = (cos(pi*gamma/180)+0.15*(93.885-gamma).^(-1.253)).^(-1);
end