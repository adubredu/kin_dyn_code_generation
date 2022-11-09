function [varargout] = forward_kinematics(varargin)
  argout_0 = cell(3,1);
  argout_1 = cell(9,1);
  argin_0 = nonzeros_gen(varargin{1});
  w0 = argin_0(1);
  w1 = -1.0000000000000000e-03;
  w2 = 1.0000000000000000e+00;
  w3 = 2.0000000000000000e+00;
  w4 = argin_0(5);
  w5 = (w3*w4);
  w6 = (w5*w4);
  w7 = argin_0(6);
  w8 = (w3*w7);
  w7 = (w8*w7);
  w9 = (w6+w7);
  w9 = (w2-w9);
  w10 = (w1*w9);
  w11 = -1.2000000000000000e-01;
  w12 = argin_0(4);
  w13 = (w5*w12);
  w14 = argin_0(7);
  w15 = (w8*w14);
  w16 = (w13-w15);
  w17 = (w11*w16);
  w18 = 4.0000000000000002e-01;
  w19 = (w8*w12);
  w5 = (w5*w14);
  w20 = (w19+w5);
  w21 = (w18*w20);
  w17 = (w17+w21);
  w10 = (w10+w17);
  w0 = (w0+w10);
  w10 = -3.1700000000000001e-03;
  w17 = 8.5020879225794488e-13;
  w21 = argin_0(28);
  w22 = cos(w21);
  w23 = (w17*w22);
  w24 = 7.4315553710846416e-14;
  w21 = sin(w21);
  w25 = (w24*w21);
  w23 = (w23+w25);
  w25 = (w9*w23);
  w26 = -1.7364827771892960e-01;
  w27 = (w26*w22);
  w28 = 9.8480773537033583e-01;
  w29 = (w28*w21);
  w27 = (w27+w29);
  w29 = (w16*w27);
  w30 = 9.8480773537033595e-01;
  w31 = (w30*w22);
  w32 = 1.7364827771892960e-01;
  w33 = (w32*w21);
  w31 = (w31+w33);
  w33 = (w20*w31);
  w29 = (w29+w33);
  w25 = (w25+w29);
  w29 = (w10*w25);
  w33 = 1.1055000000000001e-02;
  w24 = (w24*w22);
  w34 = (w17*w21);
  w24 = (w24-w34);
  w34 = (w9*w24);
  w28 = (w28*w22);
  w26 = (w26*w21);
  w28 = (w28-w26);
  w26 = (w16*w28);
  w32 = (w32*w22);
  w30 = (w30*w21);
  w32 = (w32-w30);
  w30 = (w20*w32);
  w26 = (w26+w30);
  w34 = (w34+w26);
  w26 = (w33*w34);
  w30 = 5.5500000000000001e-02;
  w21 = -7.4468209376732375e-14;
  w16 = (w21*w16);
  w20 = (w17*w20);
  w16 = (w16+w20);
  w16 = (w16-w9);
  w9 = (w30*w16);
  w26 = (w26+w9);
  w29 = (w29+w26);
  w0 = (w0+w29);
  w29 = 1.6500000000000001e-01;
  w26 = 6.7971465985726287e-01;
  w9 = argin_0(29);
  w20 = sin(w9);
  w22 = (w26*w20);
  w35 = -6.7971465985800317e-01;
  w9 = cos(w9);
  w36 = (w35*w9);
  w22 = (w22+w36);
  w36 = (w25*w22);
  w37 = 1.9490505682401801e-01;
  w38 = (w37*w20);
  w39 = -1.9490505681913683e-01;
  w40 = (w39*w9);
  w38 = (w38+w40);
  w40 = (w34*w38);
  w41 = -7.0710678118623060e-01;
  w42 = (w41*w20);
  w43 = -7.0710678118686476e-01;
  w44 = (w43*w9);
  w42 = (w42+w44);
  w44 = (w16*w42);
  w40 = (w40+w44);
  w36 = (w36+w40);
  w40 = (w29*w36);
  w44 = -1.0000000000000001e-01;
  w45 = -2.7563737473217331e-01;
  w46 = (w45*w25);
  w47 = 9.6126169051447996e-01;
  w48 = (w47*w34);
  w49 = 3.4621194799910882e-12;
  w50 = (w49*w16);
  w48 = (w48+w50);
  w46 = (w46+w48);
  w48 = (w44*w46);
  w40 = (w40+w48);
  w0 = (w0+w40);
  w40 = 3.8500000000000000e-02;
  w48 = 4.8966386501092529e-12;
  w50 = argin_0(30);
  w51 = cos(w50);
  w52 = (w48*w51);
  w53 = (w36*w52);
  w54 = (w46*w51);
  w53 = (w53-w54);
  w26 = (w26*w9);
  w35 = (w35*w20);
  w26 = (w26-w35);
  w25 = (w25*w26);
  w37 = (w37*w9);
  w39 = (w39*w20);
  w37 = (w37-w39);
  w34 = (w34*w37);
  w41 = (w41*w9);
  w43 = (w43*w20);
  w41 = (w41-w43);
  w16 = (w16*w41);
  w34 = (w34+w16);
  w25 = (w25+w34);
  w50 = sin(w50);
  w34 = (w25*w50);
  w53 = (w53-w34);
  w34 = (w40*w53);
  w16 = 1.8500000000000000e-01;
  w43 = (w48*w46);
  w43 = (w36+w43);
  w20 = (w16*w43);
  w34 = (w34+w20);
  w0 = (w0+w34);
  w34 = 3.7500000000000000e-01;
  w25 = (w25*w51);
  w20 = (w48*w50);
  w36 = (w36*w20);
  w46 = (w46*w50);
  w36 = (w36-w46);
  w25 = (w25+w36);
  w36 = 9.2387952550769148e-01;
  w46 = argin_0(31);
  w9 = cos(w46);
  w39 = (w36*w9);
  w35 = 3.8268344927326392e-01;
  w46 = sin(w46);
  w54 = (w35*w46);
  w39 = (w39+w54);
  w54 = (w25*w39);
  w55 = -2.7755575615628914e-17;
  w56 = (w55*w9);
  w57 = (w48*w46);
  w56 = (w56+w57);
  w57 = (w53*w56);
  w58 = (w35*w9);
  w59 = -9.2387952550769159e-01;
  w60 = (w59*w46);
  w58 = (w58+w60);
  w60 = (w43*w58);
  w57 = (w57+w60);
  w54 = (w54+w57);
  w57 = (w34*w54);
  w60 = -5.9999999999999998e-02;
  w61 = -1.8738621765379548e-12;
  w62 = (w61*w25);
  w63 = 4.5239367807425879e-12;
  w64 = (w63*w43);
  w64 = (w53+w64);
  w62 = (w62+w64);
  w64 = (w60*w62);
  w57 = (w57+w64);
  w0 = (w0+w57);
  argout_0{1} = w0;
  w0 = argin_0(2);
  w13 = (w13+w15);
  w15 = (w1*w13);
  w3 = (w3*w12);
  w12 = (w3*w12);
  w7 = (w12+w7);
  w7 = (w2-w7);
  w57 = (w11*w7);
  w8 = (w8*w4);
  w3 = (w3*w14);
  w14 = (w8-w3);
  w4 = (w18*w14);
  w57 = (w57+w4);
  w15 = (w15+w57);
  w0 = (w0+w15);
  w15 = (w13*w23);
  w57 = (w7*w27);
  w4 = (w14*w31);
  w57 = (w57+w4);
  w15 = (w15+w57);
  w57 = (w10*w15);
  w4 = (w13*w24);
  w64 = (w7*w28);
  w65 = (w14*w32);
  w64 = (w64+w65);
  w4 = (w4+w64);
  w64 = (w33*w4);
  w7 = (w21*w7);
  w14 = (w17*w14);
  w7 = (w7+w14);
  w7 = (w7-w13);
  w13 = (w30*w7);
  w64 = (w64+w13);
  w57 = (w57+w64);
  w0 = (w0+w57);
  w57 = (w15*w22);
  w64 = (w4*w38);
  w13 = (w7*w42);
  w64 = (w64+w13);
  w57 = (w57+w64);
  w64 = (w29*w57);
  w13 = (w45*w15);
  w14 = (w47*w4);
  w65 = (w49*w7);
  w14 = (w14+w65);
  w13 = (w13+w14);
  w14 = (w44*w13);
  w64 = (w64+w14);
  w0 = (w0+w64);
  w64 = (w57*w52);
  w14 = (w13*w51);
  w64 = (w64-w14);
  w15 = (w15*w26);
  w4 = (w4*w37);
  w7 = (w7*w41);
  w4 = (w4+w7);
  w15 = (w15+w4);
  w4 = (w15*w50);
  w64 = (w64-w4);
  w4 = (w40*w64);
  w7 = (w48*w13);
  w7 = (w57+w7);
  w14 = (w16*w7);
  w4 = (w4+w14);
  w0 = (w0+w4);
  w15 = (w15*w51);
  w57 = (w57*w20);
  w13 = (w13*w50);
  w57 = (w57-w13);
  w15 = (w15+w57);
  w57 = (w15*w39);
  w13 = (w64*w56);
  w4 = (w7*w58);
  w13 = (w13+w4);
  w57 = (w57+w13);
  w13 = (w34*w57);
  w4 = (w61*w15);
  w14 = (w63*w7);
  w14 = (w64+w14);
  w4 = (w4+w14);
  w14 = (w60*w4);
  w13 = (w13+w14);
  w0 = (w0+w13);
  argout_0{2} = w0;
  w0 = argin_0(3);
  w19 = (w19-w5);
  w1 = (w1*w19);
  w8 = (w8+w3);
  w11 = (w11*w8);
  w12 = (w12+w6);
  w2 = (w2-w12);
  w18 = (w18*w2);
  w11 = (w11+w18);
  w1 = (w1+w11);
  w0 = (w0+w1);
  w23 = (w19*w23);
  w27 = (w8*w27);
  w31 = (w2*w31);
  w27 = (w27+w31);
  w23 = (w23+w27);
  w10 = (w10*w23);
  w24 = (w19*w24);
  w28 = (w8*w28);
  w32 = (w2*w32);
  w28 = (w28+w32);
  w24 = (w24+w28);
  w33 = (w33*w24);
  w21 = (w21*w8);
  w17 = (w17*w2);
  w21 = (w21+w17);
  w21 = (w21-w19);
  w30 = (w30*w21);
  w33 = (w33+w30);
  w10 = (w10+w33);
  w0 = (w0+w10);
  w22 = (w23*w22);
  w38 = (w24*w38);
  w42 = (w21*w42);
  w38 = (w38+w42);
  w22 = (w22+w38);
  w29 = (w29*w22);
  w45 = (w45*w23);
  w47 = (w47*w24);
  w49 = (w49*w21);
  w47 = (w47+w49);
  w45 = (w45+w47);
  w44 = (w44*w45);
  w29 = (w29+w44);
  w0 = (w0+w29);
  w52 = (w22*w52);
  w29 = (w45*w51);
  w52 = (w52-w29);
  w23 = (w23*w26);
  w24 = (w24*w37);
  w21 = (w21*w41);
  w24 = (w24+w21);
  w23 = (w23+w24);
  w24 = (w23*w50);
  w52 = (w52-w24);
  w40 = (w40*w52);
  w24 = (w48*w45);
  w24 = (w22+w24);
  w16 = (w16*w24);
  w40 = (w40+w16);
  w0 = (w0+w40);
  w23 = (w23*w51);
  w22 = (w22*w20);
  w45 = (w45*w50);
  w22 = (w22-w45);
  w23 = (w23+w22);
  w39 = (w23*w39);
  w56 = (w52*w56);
  w58 = (w24*w58);
  w56 = (w56+w58);
  w39 = (w39+w56);
  w34 = (w34*w39);
  w61 = (w61*w23);
  w63 = (w63*w24);
  w63 = (w52+w63);
  w61 = (w61+w63);
  w60 = (w60*w61);
  w34 = (w34+w60);
  w0 = (w0+w34);
  argout_0{3} = w0;
  argout_1{1} = w54;
  argout_1{2} = w57;
  argout_1{3} = w39;
  w39 = (w35*w9);
  w36 = (w36*w46);
  w39 = (w39-w36);
  w25 = (w25*w39);
  w48 = (w48*w9);
  w55 = (w55*w46);
  w48 = (w48-w55);
  w53 = (w53*w48);
  w59 = (w59*w9);
  w35 = (w35*w46);
  w59 = (w59-w35);
  w43 = (w43*w59);
  w53 = (w53+w43);
  w25 = (w25+w53);
  argout_1{4} = w25;
  w15 = (w15*w39);
  w64 = (w64*w48);
  w7 = (w7*w59);
  w64 = (w64+w7);
  w15 = (w15+w64);
  argout_1{5} = w15;
  w23 = (w23*w39);
  w52 = (w52*w48);
  w24 = (w24*w59);
  w52 = (w52+w24);
  w23 = (w23+w52);
  argout_1{6} = w23;
  argout_1{7} = w62;
  argout_1{8} = w4;
  argout_1{9} = w61;
  varargout{1} = reshape(vertcat(argout_0{:}), 3, 1);
  varargout{2} = reshape(vertcat(argout_1{:}), 3, 3);
end
function y=nonzeros_gen(x)
  if isa(x,'casadi.SX') || isa(x,'casadi.MX') || isa(x,'casadi.DM')
    y = x{:};
  elseif isa(x,'sdpvar')
    b = getbase(x);
    f = find(sum(b~=0,2));
    y = sdpvar(length(f),1,[],getvariables(x),b(f,:));
  else
    y = nonzeros(x);
  end
end
function y=if_else_zero_gen(c,e)
  if isa(c+e,'casadi.SX') || isa(c+e,'casadi.MX') || isa(c+e,'casadi.DM')
    y = if_else(c, e, 0);
  else
    if c
        y = x;
    else
        y = 0;
    end
  end
end
