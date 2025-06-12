LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sseg IS
    PORT (
        bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        leds, neg : OUT STD_LOGIC_VECTOR(0 TO 6);
		  negIN: IN STD_LOGIC);
		  
END sseg;
	
ARCHITECTURE Behavior OF sseg IS
BEGIN
    PROCESS (bcd)
    BEGIN
        CASE bcd IS
            WHEN "0000" => leds <= "0000001"; --1111110 /0
            WHEN "0001" => leds <= "1001111";--0110000 /1
            WHEN "0010" => leds <= "0010010";--1101101 /2
            WHEN "0011" => leds <= "0000110";--1111001 /3
            WHEN "0100" => leds <= "1001100";--0110011 /4
            WHEN "0101" => leds <= "0100100";--1011011 /5
            WHEN "0110" => leds <= "0100000";--1011111 /6
            WHEN "0111" => leds <= "0001111";--1110000 /7
            WHEN "1000" => leds <= "0000000";--1111111 /8
            WHEN "1001" => leds <= "0001100";--1110011 /9
				WHEN "1010" => leds <= "0001000"; --1110111 /A
				WHEN "1011" => leds <= "1100000";--0011111 /B
				WHEN "1100" => leds <= "0110001";--1001110 /C
				WHEN "1101" => leds <= "1000010";--0111101 /D
				WHEN "1110" => leds <= "0110000";--1001111 /E
				WHEN "1111" => leds <= "0111000";--1000111 /F
            WHEN OTHERS => leds <= "0110000";--1001111
        END CASE;
    END PROCESS;
	PROCESS(negIN)
    BEGIN
        CASE negIN IS
            WHEN '0' => neg <= "1111111";
            WHEN '1' => neg <= "1111110"; 
            WHEN OTHERS => neg <= "-------"; 
        END CASE;
    END PROCESS;

END Behavior;