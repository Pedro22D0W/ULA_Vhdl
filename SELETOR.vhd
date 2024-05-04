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
BEGIN 
   -- PROCESS(W, X, Y)
   -- BEGIN 
        --CASE W IS 
         --   WHEN "000" =>
        --        S <= E(X, Y);
         --   WHEN "001" =>
         --       S <= OU(X, Y);
         --   WHEN "010" =>
          --      S <= NAO(Y);
         --   WHEN "011" =>
         --       S <= ADD_SUB('0', X, Y); -- '0' para soma e '1' para subtração
         --   WHEN OTHERS =>
            --    NULL;
      --  END CASE;
  --  END PROCESS;
END LOGIC;
