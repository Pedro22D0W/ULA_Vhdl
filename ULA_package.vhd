LIBRARY ieee ;
USE ieee.std_logic_1164.all ;


PACKAGE ULA_package IS

COMPONENT fulladd

PORT ( Cin, x, y: IN STD_LOGIC ;
		 s, Cout : OUT STD_LOGIC ) ;

END COMPONENT ;

--COMPONENT E

--PORT ( 
--		X, Y : IN STD_LOGIC_VECTOR(7 DOWNTO 0) ;
--		S : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) 
--		) ;
 

--END COMPONENT ;

--COMPONENT ADD_SUB_8

--PORT ( 
--Cin : IN STD_LOGIC ;
--X, Y : IN STD_LOGIC_VECTOR(7 DOWNTO 0) ;
--S : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) 
 --) ;

--END COMPONENT ;


END ULA_package ;
