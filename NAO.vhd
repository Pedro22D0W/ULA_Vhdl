LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_signed.all;

ENTITY NAO IS

PORT ( 
Y : IN STD_LOGIC_VECTOR(7 DOWNTO 0) ;
S : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) 
 ) ;
END NAO ;
ARCHITECTURE logica OF NAO IS

BEGIN

S <= NOT Y;


END logica ;