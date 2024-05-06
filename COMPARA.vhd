LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_signed.all;

ENTITY COMPARA IS 
	PORT(X,Y : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		S : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
		
END COMPARA;

ARCHITECTURE LOGICA OF COMPARA IS 
SIGNAL VERIFICA : STD_LOGIC_VECTOR(7 DOWNTO 0);

	BEGIN 
		VERIFICA <= X - Y;
		
		 PROCESS(VERIFICA)
    BEGIN
       IF VERIFICA = "00000000" THEN
           S <= "00000001";
			ELSE
				S <= "00000000"; 
			 END IF;
    END PROCESS;
END LOGICA;
