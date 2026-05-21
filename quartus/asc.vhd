LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY asc IS
    PORT(
        clock, clear : IN  STD_LOGIC;
        saida_display : OUT STD_LOGIC_VECTOR (6 DOWNTO 0);
        led : OUT UNSIGNED (2 DOWNTO 0)
    );
END asc;

ARCHITECTURE arch OF asc IS
    -- Sinais do cronômetro
    SIGNAL contador : UNSIGNED(3 DOWNTO 0) := "0000";  -- Unidades (0-9)
    SIGNAL temp_led : UNSIGNED(2 DOWNTO 0) := "000";  -- Dezenas (0-6)
         
    -- Sinais do divisor de clock
    SIGNAL tick_1s : STD_LOGIC := '0'; 
    
BEGIN
    -- Divisor de 1 segundo
    U_DIV : ENTITY work.divisor_1s PORT MAP(clock, clear, tick_1s);
    
    -- PROCESS: Cronômetro CRESCENTE (0 a 60)
    PROCESS(clock, clear)
    BEGIN
        IF clear = '1' THEN
            contador <= "0000"; 
            temp_led <= "000"; --FIXME: 3 bits
        ELSIF rising_edge(clock) THEN
            IF tick_1s = '1' THEN
                -- Verifica se chegou em 60 (fim da contagem)
                IF temp_led = 5 AND contador = 9 THEN  -- 59!
                    contador <= "0000";
                    temp_led <= "000";
                ELSIF contador = 9 THEN
                    contador <= "0000";
                    temp_led <= temp_led + 1;
                ELSE
                    contador <= contador + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;

    led <= temp_led;
    U1 : ENTITY work.display PORT MAP(contador, saida_display);
    
END arch;