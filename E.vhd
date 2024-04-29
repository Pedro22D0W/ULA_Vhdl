LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_signed.all;

ENTITY E IS

PORT ( 
X, Y : IN STD_LOGIC_VECTOR(7 DOWNTO 0) ;
S : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) 
 ) ;
END E ;
ARCHITECTURE logica OF E IS

BEGIN

S <= X AND Y;


END logica ;