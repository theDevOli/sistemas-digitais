LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY des IS
	PORT(
		-- CLOCK
		clock, clear : IN STD_LOGIC;
		-- DISPLAY
		saida_display : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
		-- LED
		led : OUT UNSIGNED (2 DOWNTO 0)
	);
END des;

ARCHITECTURE arch OF des IS
    -- Sinais do cronômetro
    SIGNAL contador : UNSIGNED(3 DOWNTO 0) := "1001"; -- Conta de 9 a 0 (unidades)
    SIGNAL temp_led : UNSIGNED(2 DOWNTO 0) := "101"; -- Conta de 6 a 0 (dezenas)
	 
    -- Sinais do divisor de clock
    SIGNAL tick_1s : STD_LOGIC := '0';
    
BEGIN
    -- Divisor de 1 segundo
    U_DIV : ENTITY work.divisor_1s PORT MAP(clock, clear, tick_1s);
    
    -- Cronômetro (conta os segundos)
	PROCESS(clock, clear)
	BEGIN
		 IF clear = '1' THEN
			  contador <= "1001";
			  temp_led <= "101";
		 ELSIF rising_edge(clock) THEN
			  IF tick_1s = '1' THEN
					-- Verifica se já está em 00
					IF temp_led = 0 AND contador = 0 THEN
						 -- Já mostrou 00, agora reseta
						 contador <= "1001"; --9
						 temp_led <= "101"; --5
					ELSIF contador = 0 THEN
						 contador <= "1001";
						 temp_led <= temp_led - 1;
					ELSE
						 contador <= contador - 1;
					END IF;
			  END IF;
		 END IF;
	END PROCESS;
    
    led <= temp_led;
    U1 : ENTITY work.display PORT MAP(contador, saida_display);
END arch;