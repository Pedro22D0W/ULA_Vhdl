LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.ULA_package.all ;

ENTITY ADD_SUB IS
PORT ( Cin : IN STD_LOGIC ;
X, Y : IN STD_LOGIC_VECTOR(7 DOWNTO 0) ;
S : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) ;
Cout : OUT STD_LOGIC ) ;
END ADD_SUB ;
ARCHITECTURE logica OF ADD_SUB IS

SIGNAL C : STD_LOGIC_VECTOR(1 TO 7) ;
SIGNAL YB : STD_LOGIC_VECTOR(7 DOWNTO 0) ;
BEGIN

  YB(0) <= Y(0) XOR CIN;
  YB(1) <= Y(1) XOR CIN;
  YB(2) <= Y(2) XOR CIN;
  YB(3) <= Y(3) XOR CIN;
  YB(4) <= Y(4) XOR CIN;
  YB(5) <= Y(5) XOR CIN;
  YB(6) <= Y(6) XOR CIN;
  YB(7) <= Y(7) XOR CIN;

stage0: fulladd PORT MAP ( Cin, X(0), YB(0), S(0), C(1) ) ;
stage1: fulladd PORT MAP ( C(1), X(1),YB(1), S(1), C(2) ) ;
stage2: fulladd PORT MAP ( C(2), X(2),YB(2), S(2), C(3) ) ;
stage3: fulladd PORT MAP ( C(3), X(3),YB(3), S(3), C(4) ) ;
stage4: fulladd PORT MAP ( C(4), X(4),YB(4), S(4), C(5) ) ;
stage5: fulladd PORT MAP ( C(5), X(5),YB(5), S(5), C(6) ) ;
stage6: fulladd PORT MAP ( C(6), X(6),YB(6), S(6), C(7) ) ;
stage7: fulladd PORT MAP ( C(7), X(7),YB(7), S(7), Cout ) ;

END logica ;
