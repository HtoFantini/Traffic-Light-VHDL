library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity Tb_Sinal is
end entity;


architecture teste of Tb_Sinal is

	constant clkFrequency : integer:= 10e3; -- 1KHz
	constant ClkPeriod : time := 1000 ms / ClockFrequency; -- Conversao de Hz para tempo
	
	signal Clk 				  			: std_logic := '1';
	signal Reset 		 	  			: std_logic := '1';
	signal red_light 				 	: std_logic;
	signal red_light_2 			 	: std_logic;
   signal yellow_light 			  	: std_logic;
	signal yellow_light_2 		  	: std_logic;
   signal green_light 			  	: std_logic;
	signal green_light_2 			: std_logic;
	signal pedestre_red_light 	  	: std_logic;
	signal pedestre_red_light_2   : std_logic;
	signal pedestre_green_light   : std_logic;
	signal pedestre_green_light_2 : std_logic;
	signal Hora 						: unsigned(4 downto 0);
	signal Minuto, Segundo 		  	: unsigned(5 downto 0);
	signal Frac 						: unsigned(13 downto 0);
	signal buzzer 					  	: std_logic;

begin


instancia_Sinal: entity work.Sinal(teste)
port map(Clk 						  => Clk,
			Reset 					  => Reset,
			red_light 				  => red_light,
			red_light_2 			  => red_light_2,
			yellow_light 	 		  => yellow_light,	
			yellow_light_2 		  => yellow_light_2,	  
			green_light 			  => green_light,
			green_light_2 			  => green_light_2,	
			pedestre_red_light 	  => pedestre_red_light,	
			pedestre_red_light_2   => pedestre_red_light_2,
			pedestre_green_light   => pedestre_green_light,
			pedestre_green_light_2 => pedestre_green_light_2,
			Hora 						  => Hora,
			Minuto					  => Minuto,
			Segundo 		  			  => Segundo,
			Frac 						  => Frac,
			buzzer 					  => buzzer
			);
	
	Clk <= not Clk after ClockPeriod / 2;
		
	process is
	begin
	
		wait until rising_edge(Clk);
		wait until rising_edge(Clk);

		Reset <= '0';
	
		wait
		
	end process;

end architecture;
	


	