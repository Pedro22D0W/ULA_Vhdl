LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.ULA_package.all ;

ENTITY SELETOR IS
    PORT(
        W : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        X, Y : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        S : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END SELETOR;

ARCHITECTURE LOGIC OF SELETOR IS
SIGNAL E2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL OU2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL NAO2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ADD : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SUB : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL COMPARA2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MAIOR2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MENOR2: STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 



s0: E PORT MAP( X,Y,E2 );
s1: OU PORT MAP( X,Y,OU2 );
s2: NAO PORT MAP( Y,NAO2 );
s3: ADD_SUB PORT MAP( '0',X,Y,ADD );
s4: ADD_SUB PORT MAP( '1',X,Y,SUB );
s5: COMPARA PORT MAP( X,Y,COMPARA2 );
s6: MAIOR PORT MAP( X,Y,MAIOR2 );
s7: MENOR PORT MAP( X,Y,MENOR2 );
	 
    PROCESS(W)
    BEGIN 
	 
        CASE W IS 
            WHEN "000" =>
                S <= E2;
            WHEN "001" =>
                S <= OU2;
            WHEN "010" =>
                S <= NAO2;
            WHEN "011" =>
                S <= ADD; 
				WHEN "100" =>
                S <= SUB; 
				 WHEN "101" =>
                S <= COMPARA2;
				WHEN "110" =>
                S <= MAIOR2;
				WHEN "111" =>
                S <= MENOR2; 	 
            WHEN OTHERS =>
                NULL;
        END CASE;
    END PROCESS;
END LOGIC;
