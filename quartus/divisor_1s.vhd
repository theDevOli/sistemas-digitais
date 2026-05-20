LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY divisor_1s IS
    PORT(
        clock : IN STD_LOGIC;
        clear : IN STD_LOGIC;
        tick : OUT STD_LOGIC
    );
END divisor_1s;

ARCHITECTURE arch OF divisor_1s IS
    -- Constantes do divisor (fixas para 12 MHz -> 1 Hz)
    CONSTANT CLOCK_FREQ : INTEGER := 12_000_000;
    CONSTANT TARGET_FREQ : INTEGER := 1;
    CONSTANT DIVISOR_MAX : INTEGER := (CLOCK_FREQ / TARGET_FREQ) - 1;
    
    SIGNAL counter_div : INTEGER RANGE 0 TO DIVISOR_MAX := 0;
    SIGNAL tick_signal : STD_LOGIC := '0';
    
BEGIN
    PROCESS(clock, clear)
    BEGIN
        IF clear = '1' THEN
            counter_div <= 0;
            tick_signal <= '0';
        ELSIF rising_edge(clock) THEN
            IF counter_div = DIVISOR_MAX THEN
                counter_div <= 0;
                tick_signal <= '1';
            ELSE
                counter_div <= counter_div + 1;
                tick_signal <= '0';
            END IF;
        END IF;
    END PROCESS;
    
    tick <= tick_signal;
END arch;