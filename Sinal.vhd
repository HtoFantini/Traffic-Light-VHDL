library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity Sinal is
  port (
    reset : in std_logic;
    clk : in std_logic;
	 
    red_light : out std_logic;
	 red_light_2 : out std_logic;
	 
    yellow_light : out std_logic;
	 yellow_light_2 : out std_logic;
	 
    green_light : out std_logic;
	 green_light_2 : out std_logic;
	 
	 pedestre_red_light : out std_logic;
	 pedestre_red_light_2 : out std_logic;
	 
	 pedestre_green_light : out std_logic;
	 pedestre_green_light_2 : out std_logic;
	 
	 Hora : buffer unsigned(4 downto 0);
	 Minuto, Segundo : buffer unsigned(5 downto 0);
	 Frac : buffer unsigned(13 downto 0);
	 
	 buzzer : out std_logic
	 
	 
  );
end entity Sinal;

architecture Behavioral of Sinal is

  -- Declaração do estados da Maquina de estado do Sinal
  type State_Type is (
    STATE_WAIT,
    STATE_RED,
    STATE_GREEN,
    STATE_YELLOW
  );
  
  signal current_state : State_Type;
  signal next_state : State_Type;
  signal time_counter : unsigned(5 downto 0);
  
  
  -- Definir as durações dos estados
  constant TIME_RED : unsigned(5 downto 0) := "100000"; -- 10 segundos a uma frequência de clock de 10 kHz
  constant TIME_GREEN : unsigned(5 downto 0) := "100000"; -- 10 segundos a uma frequência de clock de 10 kHz
  constant TIME_YELLOW : unsigned(5 downto 0) := "010000"; -- 5 segundos a uma frequência de clock de 10 kHz
  constant TIME_WAIT : unsigned(5 downto 0) := "010000"; -- 5 segundos 
  
  begin
  
  process(clk, reset, current_state, next_state)
  begin
		
		if rising_edge(clk) then
			
--			Frac <= Frac + 1;
--			
--			when Frac >= "10011100010000" then
--				Frac <= "000000000000000";
--				Segundo <= Segundo + 1;
--				
--			when Segundo >= "
			
			
			if reset	 = '1' then 
			
			current_state <=STATE_WAIT;
			time_counter <= "000000";
			red_light <= '1';
			yellow_light <= '0';
			green_light <= '0';
			pedestre_red_light <= '1';
			pedestre_green_light <= '0';
			buzzer <= '0';
			
			else 
			
				red_light <= '0';
				red_light_2 <= '0';
				
				yellow_light <= '0';
				yellow_light_2 <= '0';
				
				green_light <= '0';
				green_light_2 <= '0';
				
				pedestre_red_light <= '0';
				pedestre_red_light_2 <= '0';
				
				pedestre_green_light <= '0';
				pedestre_green_light_2 <= '0';
				
				
				
				if time_counter /= "000000" then
					time_counter <= time_counter - 1;
					
					if time_counter < "010001" and current_state = STATE_RED then
						buzzer <= '1';
					end if;
					
				else
					case current_state is
						when STATE_WAIT =>
							current_state <= STATE_RED;
							time_counter <= TIME_RED;
							
							red_light <= '1';
							pedestre_green_light <= '1';
							 
							 
						when STATE_RED =>
							current_state <= STATE_GREEN;
							time_counter <= TIME_GREEN;
							
							buzzer <= '0';
							green_light <= '1';
							pedestre_red_light <= '1';
							
							
						when STATE_GREEN =>
							current_state <= STATE_YELLOW;
							time_counter <= TIME_YELLOW;
							
							yellow_light <= '1';
							pedestre_red_light <= '1';
							
							
						when STATE_YELLOW =>
							current_state <= STATE_WAIT;
							time_counter <= TIME_WAIT;
							
							red_light <= '1';
							pedestre_red_light <= '1';
							
						when others =>
							null;
							
					end case;
				end if;	
			end if;
		end if;
		
	end process;
	
end architecture Behavioral;