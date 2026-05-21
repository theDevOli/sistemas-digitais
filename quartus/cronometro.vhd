LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY cronometro IS
    PORT(
		  --CLOCK
        clock, clear 		: IN  STD_LOGIC;
		  -- BOTAO DE SELECAO
        btnChose, btnStop	: IN  STD_LOGIC;  -- 0->des, 1->asc
		  -- DISPLAY DE 7 SEG
        saida_display 		: OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
		  -- LEDS
        led          		: OUT UNSIGNED (2 DOWNTO 0)
    );
END cronometro;

ARCHITECTURE arch OF cronometro IS
    SIGNAL display_asc, display_des : STD_LOGIC_VECTOR (6 DOWNTO 0);
    SIGNAL led_asc, led_des : UNSIGNED (2 DOWNTO 0);
BEGIN
    U1 : ENTITY work.asc PORT MAP(clock, clear, display_asc, led_asc);
    U2 : ENTITY work.des PORT MAP(clock, clear, display_des, led_des);
    
    PROCESS(btnChose, btnStop, display_asc, display_des, led_asc, led_des)
    BEGIN
	 IF btnStop = '0' THEN
			  IF btnChose = '1' THEN
					saida_display <= display_asc;
					led <= led_asc;
			  ELSE
					saida_display <= display_des;
					led <= led_des;
			  END IF;
	 END IF;
    END PROCESS;
END arch;