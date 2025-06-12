library ieee; 
use ieee.std_logic_1164.all;
entity machine is
port
	(
		clk: in std_logic;
		data_in: in std_logic; 
		reset: in std_logic; 
		student_id: out std_logic_vector(3 DOWNTO 0);
		current_state: out std_logic_vector(3 DOWNTO 0));
end entity; 
architecture fsm of machine is
----- 
	type state_type is (s0, s1, s2, s3, s4, s5, s6, s7, s8);
------
	signal yfsm : state_type; 
begin
	process(clk, reset)
	begin
		if reset = '1' then 
			yfsm <= s0;
		elsif (clk'EVENT AND clk = '1') then 
			case yfsm is 
				when s0=>
					if (data_in <= '0') then 
						current_state <= "0000";--s0
						yfsm <= s0; 
					else
						current_state <= "0001";--s1
						yfsm <= s1; 
					end if; 
				when s1=>
					if (data_in <= '0') then 
						current_state <= "0001"; --s1
						yfsm <= s1; 
					else
						current_state <= "0010"; --s2
						yfsm <= s2; 
					end if;
				when s2=>
					if (data_in <= '0') then 
						current_state <= "0010"; --s2 
						yfsm <= s2; 
					else
						current_state <= "0011"; --s3
						yfsm <= s3; 
					end if;
				when s3=>
					if (data_in <= '0') then 
						current_state <= "0011"; --s3
						yfsm <= s3; 
					else
						current_state <= "0100"; --s4
						yfsm <= s4; 
					end if;
				when s4=>
					if (data_in <= '0') then 
						current_state <= "0100"; --s4
						yfsm <= s4; 
					else
						current_state <= "0101"; --s5
						yfsm <= s5; 
					end if;
				when s5=>
					if (data_in <= '0') then 
						current_state <= "0101"; --s5
						yfsm <= s5; 	
					else
						current_state <= "0110"; --s6
						yfsm <= s6; 
					end if;
				when s6=>
					if (data_in <= '0') then 
						current_state <= "0110";--s6
						yfsm <= s6; 	
					else
						current_state <= "0111"; --s7
						yfsm <= s7; 
					end if;
				when s7=>
					if (data_in <= '0') then 
						current_state <= "0111"; --s7
						yfsm <= s7; 
					else
						current_state <= "1000"; --s8
						yfsm <= s8; 
					end if;
				when s8=>
					if (data_in <= '0') then 
						current_state <= "1000";--s8 
						yfsm <= s8; 
					else
						current_state <= "0000";--s0
						yfsm <= s0; 
					end if;	
			end case; 
		end if;
	end process; 
	process (yfsm, data_in)
	begin
		case yfsm is 
			when s0 => student_id <= "0101"; 
			when s1 => student_id <= "0000"; 
			when s2 => student_id <= "0001"; 
			when s3 => student_id <= "0001"; 
			when s4 => student_id <= "0110"; 
			when s5 => student_id <= "1001"; 
			when s6 => student_id <= "0110"; 
			when s7 => student_id <= "0100"; 
			when s8 => student_id <= "0110";


		end case; 
	end process; 
end architecture; 
		