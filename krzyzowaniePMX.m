
function [P1,P2] = krzyzowaniePMX(R1,R2,k1,k2)
dlugoscWiersza = length(R1);

Z1 = R1;
Z2 = R2;
if k1 <= k2
  for i=k1:k2
  t = Z2(i);
  Z2(i) = Z1(i);
  Z1(i) = t;
  end;
else 
  for i=k2:k1
  t = Z2(i);
  Z2(i) = Z1(i);
  Z1(i) = t;
  end;
end;

P1 = Z1;
P2 = Z2;
