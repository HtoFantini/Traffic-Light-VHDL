-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"

-- DATE "06/24/2023 11:28:32"

-- 
-- Device: Altera 10M40DCF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Sinal IS
    PORT (
	reset : IN std_logic;
	clk : IN std_logic;
	red_light : BUFFER std_logic;
	red_light_2 : BUFFER std_logic;
	yellow_light : BUFFER std_logic;
	yellow_light_2 : BUFFER std_logic;
	green_light : BUFFER std_logic;
	green_light_2 : BUFFER std_logic;
	pedestre_red_light : BUFFER std_logic;
	pedestre_red_light_2 : BUFFER std_logic;
	pedestre_green_light : BUFFER std_logic;
	pedestre_green_light_2 : BUFFER std_logic;
	Hora : BUFFER std_logic_vector(4 DOWNTO 0);
	Minuto : BUFFER std_logic_vector(5 DOWNTO 0);
	Segundo : BUFFER std_logic_vector(5 DOWNTO 0);
	Frac : BUFFER std_logic_vector(13 DOWNTO 0);
	buzzer : BUFFER std_logic
	);
END Sinal;

-- Design Ports Information
-- red_light	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red_light_2	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yellow_light	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yellow_light_2	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_light	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_light_2	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pedestre_red_light	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pedestre_red_light_2	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pedestre_green_light	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pedestre_green_light_2	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hora[0]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hora[1]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hora[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hora[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hora[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Minuto[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Minuto[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Minuto[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Minuto[3]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Minuto[4]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Minuto[5]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Segundo[0]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Segundo[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Segundo[2]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Segundo[3]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Segundo[4]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Segundo[5]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Frac[0]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Frac[1]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Frac[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Frac[3]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Frac[4]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Frac[5]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Frac[6]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Frac[7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Frac[8]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Frac[9]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Frac[10]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Frac[11]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Frac[12]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Frac[13]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buzzer	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Sinal IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_red_light : std_logic;
SIGNAL ww_red_light_2 : std_logic;
SIGNAL ww_yellow_light : std_logic;
SIGNAL ww_yellow_light_2 : std_logic;
SIGNAL ww_green_light : std_logic;
SIGNAL ww_green_light_2 : std_logic;
SIGNAL ww_pedestre_red_light : std_logic;
SIGNAL ww_pedestre_red_light_2 : std_logic;
SIGNAL ww_pedestre_green_light : std_logic;
SIGNAL ww_pedestre_green_light_2 : std_logic;
SIGNAL ww_Hora : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Minuto : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Segundo : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Frac : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_buzzer : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \red_light~output_o\ : std_logic;
SIGNAL \red_light_2~output_o\ : std_logic;
SIGNAL \yellow_light~output_o\ : std_logic;
SIGNAL \yellow_light_2~output_o\ : std_logic;
SIGNAL \green_light~output_o\ : std_logic;
SIGNAL \green_light_2~output_o\ : std_logic;
SIGNAL \pedestre_red_light~output_o\ : std_logic;
SIGNAL \pedestre_red_light_2~output_o\ : std_logic;
SIGNAL \pedestre_green_light~output_o\ : std_logic;
SIGNAL \pedestre_green_light_2~output_o\ : std_logic;
SIGNAL \Hora[0]~output_o\ : std_logic;
SIGNAL \Hora[1]~output_o\ : std_logic;
SIGNAL \Hora[2]~output_o\ : std_logic;
SIGNAL \Hora[3]~output_o\ : std_logic;
SIGNAL \Hora[4]~output_o\ : std_logic;
SIGNAL \Minuto[0]~output_o\ : std_logic;
SIGNAL \Minuto[1]~output_o\ : std_logic;
SIGNAL \Minuto[2]~output_o\ : std_logic;
SIGNAL \Minuto[3]~output_o\ : std_logic;
SIGNAL \Minuto[4]~output_o\ : std_logic;
SIGNAL \Minuto[5]~output_o\ : std_logic;
SIGNAL \Segundo[0]~output_o\ : std_logic;
SIGNAL \Segundo[1]~output_o\ : std_logic;
SIGNAL \Segundo[2]~output_o\ : std_logic;
SIGNAL \Segundo[3]~output_o\ : std_logic;
SIGNAL \Segundo[4]~output_o\ : std_logic;
SIGNAL \Segundo[5]~output_o\ : std_logic;
SIGNAL \Frac[0]~output_o\ : std_logic;
SIGNAL \Frac[1]~output_o\ : std_logic;
SIGNAL \Frac[2]~output_o\ : std_logic;
SIGNAL \Frac[3]~output_o\ : std_logic;
SIGNAL \Frac[4]~output_o\ : std_logic;
SIGNAL \Frac[5]~output_o\ : std_logic;
SIGNAL \Frac[6]~output_o\ : std_logic;
SIGNAL \Frac[7]~output_o\ : std_logic;
SIGNAL \Frac[8]~output_o\ : std_logic;
SIGNAL \Frac[9]~output_o\ : std_logic;
SIGNAL \Frac[10]~output_o\ : std_logic;
SIGNAL \Frac[11]~output_o\ : std_logic;
SIGNAL \Frac[12]~output_o\ : std_logic;
SIGNAL \Frac[13]~output_o\ : std_logic;
SIGNAL \buzzer~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \current_state~10_combout\ : std_logic;
SIGNAL \time_counter~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \time_counter~4_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \time_counter~5_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \time_counter~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \time_counter~7_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \time_counter~3_combout\ : std_logic;
SIGNAL \buzzer~0_combout\ : std_logic;
SIGNAL \yellow_light~0_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \time_counter~2_combout\ : std_logic;
SIGNAL \buzzer~1_combout\ : std_logic;
SIGNAL \current_state.STATE_RED~q\ : std_logic;
SIGNAL \current_state~9_combout\ : std_logic;
SIGNAL \current_state.STATE_GREEN~q\ : std_logic;
SIGNAL \current_state~7_combout\ : std_logic;
SIGNAL \current_state.STATE_YELLOW~q\ : std_logic;
SIGNAL \current_state~8_combout\ : std_logic;
SIGNAL \current_state.STATE_WAIT~q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \red_light~1_combout\ : std_logic;
SIGNAL \red_light~reg0_q\ : std_logic;
SIGNAL \yellow_light~1_combout\ : std_logic;
SIGNAL \yellow_light~reg0_q\ : std_logic;
SIGNAL \green_light~0_combout\ : std_logic;
SIGNAL \green_light~reg0_q\ : std_logic;
SIGNAL \pedestre_red_light~0_combout\ : std_logic;
SIGNAL \pedestre_red_light~reg0_q\ : std_logic;
SIGNAL \pedestre_green_light~0_combout\ : std_logic;
SIGNAL \pedestre_green_light~reg0_q\ : std_logic;
SIGNAL \buzzer~2_combout\ : std_logic;
SIGNAL \buzzer~3_combout\ : std_logic;
SIGNAL \buzzer~reg0_q\ : std_logic;
SIGNAL time_counter : std_logic_vector(5 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_reset <= reset;
ww_clk <= clk;
red_light <= ww_red_light;
red_light_2 <= ww_red_light_2;
yellow_light <= ww_yellow_light;
yellow_light_2 <= ww_yellow_light_2;
green_light <= ww_green_light;
green_light_2 <= ww_green_light_2;
pedestre_red_light <= ww_pedestre_red_light;
pedestre_red_light_2 <= ww_pedestre_red_light_2;
pedestre_green_light <= ww_pedestre_green_light;
pedestre_green_light_2 <= ww_pedestre_green_light_2;
Hora <= ww_Hora;
Minuto <= ww_Minuto;
Segundo <= ww_Segundo;
Frac <= ww_Frac;
buzzer <= ww_buzzer;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X0_Y27_N16
\red_light~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \red_light~reg0_q\,
	devoe => ww_devoe,
	o => \red_light~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\red_light_2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \red_light_2~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\yellow_light~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \yellow_light~reg0_q\,
	devoe => ww_devoe,
	o => \yellow_light~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\yellow_light_2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \yellow_light_2~output_o\);

-- Location: IOOBUF_X0_Y28_N2
\green_light~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \green_light~reg0_q\,
	devoe => ww_devoe,
	o => \green_light~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\green_light_2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \green_light_2~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\pedestre_red_light~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pedestre_red_light~reg0_q\,
	devoe => ww_devoe,
	o => \pedestre_red_light~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\pedestre_red_light_2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pedestre_red_light_2~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\pedestre_green_light~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pedestre_green_light~reg0_q\,
	devoe => ww_devoe,
	o => \pedestre_green_light~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\pedestre_green_light_2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pedestre_green_light_2~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\Hora[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hora[0]~output_o\);

-- Location: IOOBUF_X78_Y23_N9
\Hora[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hora[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\Hora[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hora[2]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\Hora[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hora[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\Hora[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hora[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\Minuto[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Minuto[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\Minuto[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Minuto[1]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\Minuto[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Minuto[2]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\Minuto[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Minuto[3]~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\Minuto[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Minuto[4]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\Minuto[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Minuto[5]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\Segundo[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Segundo[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\Segundo[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Segundo[1]~output_o\);

-- Location: IOOBUF_X51_Y0_N9
\Segundo[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Segundo[2]~output_o\);

-- Location: IOOBUF_X71_Y54_N30
\Segundo[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Segundo[3]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\Segundo[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Segundo[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\Segundo[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Segundo[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\Frac[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Frac[0]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\Frac[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Frac[1]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\Frac[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Frac[2]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\Frac[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Frac[3]~output_o\);

-- Location: IOOBUF_X78_Y16_N9
\Frac[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Frac[4]~output_o\);

-- Location: IOOBUF_X78_Y15_N9
\Frac[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Frac[5]~output_o\);

-- Location: IOOBUF_X78_Y41_N24
\Frac[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Frac[6]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\Frac[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Frac[7]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\Frac[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Frac[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\Frac[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Frac[9]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\Frac[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Frac[10]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\Frac[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Frac[11]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\Frac[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Frac[12]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\Frac[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Frac[13]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\buzzer~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \buzzer~reg0_q\,
	devoe => ww_devoe,
	o => \buzzer~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y27_N22
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X1_Y27_N26
\current_state~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_state~10_combout\ = (!\reset~input_o\ & !\current_state.STATE_WAIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \current_state.STATE_WAIT~q\,
	combout => \current_state~10_combout\);

-- Location: LCCOMB_X1_Y27_N0
\time_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \time_counter~1_combout\ = (!\current_state.STATE_RED~q\ & \current_state.STATE_WAIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.STATE_RED~q\,
	datad => \current_state.STATE_WAIT~q\,
	combout => \time_counter~1_combout\);

-- Location: LCCOMB_X2_Y27_N20
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = time_counter(0) $ (VCC)
-- \Add0~1\ = CARRY(time_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => time_counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X2_Y27_N8
\time_counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \time_counter~4_combout\ = (\Add0~0_combout\ & !\buzzer~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datad => \buzzer~1_combout\,
	combout => \time_counter~4_combout\);

-- Location: FF_X2_Y27_N9
\time_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_counter(0));

-- Location: LCCOMB_X2_Y27_N22
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (time_counter(1) & (\Add0~1\ & VCC)) # (!time_counter(1) & (!\Add0~1\))
-- \Add0~3\ = CARRY((!time_counter(1) & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time_counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X2_Y27_N10
\time_counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \time_counter~5_combout\ = (\Add0~2_combout\ & !\buzzer~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	datad => \buzzer~1_combout\,
	combout => \time_counter~5_combout\);

-- Location: FF_X2_Y27_N11
\time_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_counter(1));

-- Location: LCCOMB_X2_Y27_N24
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (time_counter(2) & ((GND) # (!\Add0~3\))) # (!time_counter(2) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((time_counter(2)) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time_counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X2_Y27_N0
\time_counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \time_counter~6_combout\ = (!\buzzer~1_combout\ & \Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buzzer~1_combout\,
	datad => \Add0~4_combout\,
	combout => \time_counter~6_combout\);

-- Location: FF_X2_Y27_N1
\time_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_counter(2));

-- Location: LCCOMB_X2_Y27_N26
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (time_counter(3) & (\Add0~5\ & VCC)) # (!time_counter(3) & (!\Add0~5\))
-- \Add0~7\ = CARRY((!time_counter(3) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time_counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X2_Y27_N14
\time_counter~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \time_counter~7_combout\ = (\Add0~6_combout\ & !\buzzer~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~6_combout\,
	datad => \buzzer~1_combout\,
	combout => \time_counter~7_combout\);

-- Location: FF_X2_Y27_N15
\time_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_counter(3));

-- Location: LCCOMB_X2_Y27_N28
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (time_counter(4) & ((GND) # (!\Add0~7\))) # (!time_counter(4) & (\Add0~7\ $ (GND)))
-- \Add0~9\ = CARRY((time_counter(4)) # (!\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time_counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X2_Y27_N30
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = \Add0~9\ $ (!time_counter(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => time_counter(5),
	cin => \Add0~9\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X2_Y27_N2
\time_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \time_counter~3_combout\ = (\time_counter~1_combout\ & (((\Add0~10_combout\ & !\buzzer~1_combout\)))) # (!\time_counter~1_combout\ & ((\yellow_light~0_combout\) # ((\Add0~10_combout\ & !\buzzer~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_counter~1_combout\,
	datab => \yellow_light~0_combout\,
	datac => \Add0~10_combout\,
	datad => \buzzer~1_combout\,
	combout => \time_counter~3_combout\);

-- Location: FF_X2_Y27_N3
\time_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_counter(5));

-- Location: LCCOMB_X2_Y27_N16
\buzzer~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \buzzer~0_combout\ = (!time_counter(1) & (!time_counter(0) & (!time_counter(3) & !time_counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time_counter(1),
	datab => time_counter(0),
	datac => time_counter(3),
	datad => time_counter(2),
	combout => \buzzer~0_combout\);

-- Location: LCCOMB_X2_Y27_N4
\yellow_light~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \yellow_light~0_combout\ = (!time_counter(4) & (!time_counter(5) & (!\reset~input_o\ & \buzzer~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time_counter(4),
	datab => time_counter(5),
	datac => \reset~input_o\,
	datad => \buzzer~0_combout\,
	combout => \yellow_light~0_combout\);

-- Location: LCCOMB_X2_Y27_N12
\time_counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \time_counter~2_combout\ = (\time_counter~1_combout\ & ((\yellow_light~0_combout\) # ((!\buzzer~1_combout\ & \Add0~8_combout\)))) # (!\time_counter~1_combout\ & (!\buzzer~1_combout\ & ((\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_counter~1_combout\,
	datab => \buzzer~1_combout\,
	datac => \yellow_light~0_combout\,
	datad => \Add0~8_combout\,
	combout => \time_counter~2_combout\);

-- Location: FF_X2_Y27_N13
\time_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_counter(4));

-- Location: LCCOMB_X2_Y27_N18
\buzzer~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \buzzer~1_combout\ = (\reset~input_o\) # ((!time_counter(4) & (!time_counter(5) & \buzzer~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time_counter(4),
	datab => time_counter(5),
	datac => \reset~input_o\,
	datad => \buzzer~0_combout\,
	combout => \buzzer~1_combout\);

-- Location: FF_X2_Y27_N31
\current_state.STATE_RED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \current_state~10_combout\,
	sload => VCC,
	ena => \buzzer~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.STATE_RED~q\);

-- Location: LCCOMB_X2_Y27_N6
\current_state~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_state~9_combout\ = (!\reset~input_o\ & \current_state.STATE_RED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \current_state.STATE_RED~q\,
	combout => \current_state~9_combout\);

-- Location: FF_X2_Y27_N7
\current_state.STATE_GREEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state~9_combout\,
	ena => \buzzer~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.STATE_GREEN~q\);

-- Location: LCCOMB_X1_Y27_N4
\current_state~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_state~7_combout\ = (!\reset~input_o\ & \current_state.STATE_GREEN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \current_state.STATE_GREEN~q\,
	combout => \current_state~7_combout\);

-- Location: FF_X2_Y27_N29
\current_state.STATE_YELLOW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \current_state~7_combout\,
	sload => VCC,
	ena => \buzzer~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.STATE_YELLOW~q\);

-- Location: LCCOMB_X1_Y27_N6
\current_state~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_state~8_combout\ = (!\reset~input_o\ & !\current_state.STATE_YELLOW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \current_state.STATE_YELLOW~q\,
	combout => \current_state~8_combout\);

-- Location: FF_X2_Y27_N23
\current_state.STATE_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \current_state~8_combout\,
	sload => VCC,
	ena => \buzzer~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.STATE_WAIT~q\);

-- Location: LCCOMB_X1_Y27_N12
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (time_counter(5)) # ((time_counter(4)) # (!\buzzer~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time_counter(5),
	datab => time_counter(4),
	datad => \buzzer~0_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y27_N28
\red_light~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \red_light~1_combout\ = (\reset~input_o\) # ((!\Equal0~0_combout\ & ((\current_state.STATE_YELLOW~q\) # (!\current_state.STATE_WAIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \current_state.STATE_WAIT~q\,
	datac => \current_state.STATE_YELLOW~q\,
	datad => \Equal0~0_combout\,
	combout => \red_light~1_combout\);

-- Location: FF_X1_Y27_N29
\red_light~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \red_light~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \red_light~reg0_q\);

-- Location: LCCOMB_X1_Y27_N30
\yellow_light~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \yellow_light~1_combout\ = (\current_state.STATE_GREEN~q\ & \yellow_light~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.STATE_GREEN~q\,
	datad => \yellow_light~0_combout\,
	combout => \yellow_light~1_combout\);

-- Location: FF_X1_Y27_N31
\yellow_light~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \yellow_light~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yellow_light~reg0_q\);

-- Location: LCCOMB_X1_Y27_N24
\green_light~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \green_light~0_combout\ = (\current_state.STATE_RED~q\ & \yellow_light~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.STATE_RED~q\,
	datad => \yellow_light~0_combout\,
	combout => \green_light~0_combout\);

-- Location: FF_X1_Y27_N25
\green_light~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \green_light~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \green_light~reg0_q\);

-- Location: LCCOMB_X1_Y27_N2
\pedestre_red_light~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pedestre_red_light~0_combout\ = (\reset~input_o\) # ((\current_state.STATE_WAIT~q\ & !\Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \current_state.STATE_WAIT~q\,
	datad => \Equal0~0_combout\,
	combout => \pedestre_red_light~0_combout\);

-- Location: FF_X1_Y27_N3
\pedestre_red_light~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pedestre_red_light~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pedestre_red_light~reg0_q\);

-- Location: LCCOMB_X1_Y27_N16
\pedestre_green_light~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pedestre_green_light~0_combout\ = (!\current_state.STATE_WAIT~q\ & \yellow_light~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.STATE_WAIT~q\,
	datad => \yellow_light~0_combout\,
	combout => \pedestre_green_light~0_combout\);

-- Location: FF_X1_Y27_N17
\pedestre_green_light~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pedestre_green_light~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pedestre_green_light~reg0_q\);

-- Location: LCCOMB_X1_Y27_N18
\buzzer~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \buzzer~2_combout\ = (!time_counter(5) & (\current_state.STATE_RED~q\ & ((\buzzer~0_combout\) # (!time_counter(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time_counter(5),
	datab => time_counter(4),
	datac => \current_state.STATE_RED~q\,
	datad => \buzzer~0_combout\,
	combout => \buzzer~2_combout\);

-- Location: LCCOMB_X1_Y27_N14
\buzzer~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \buzzer~3_combout\ = (\buzzer~2_combout\ & (((!\buzzer~1_combout\)))) # (!\buzzer~2_combout\ & (!\reset~input_o\ & ((\buzzer~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \buzzer~1_combout\,
	datac => \buzzer~reg0_q\,
	datad => \buzzer~2_combout\,
	combout => \buzzer~3_combout\);

-- Location: FF_X1_Y27_N15
\buzzer~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buzzer~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer~reg0_q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_red_light <= \red_light~output_o\;

ww_red_light_2 <= \red_light_2~output_o\;

ww_yellow_light <= \yellow_light~output_o\;

ww_yellow_light_2 <= \yellow_light_2~output_o\;

ww_green_light <= \green_light~output_o\;

ww_green_light_2 <= \green_light_2~output_o\;

ww_pedestre_red_light <= \pedestre_red_light~output_o\;

ww_pedestre_red_light_2 <= \pedestre_red_light_2~output_o\;

ww_pedestre_green_light <= \pedestre_green_light~output_o\;

ww_pedestre_green_light_2 <= \pedestre_green_light_2~output_o\;

ww_Hora(0) <= \Hora[0]~output_o\;

ww_Hora(1) <= \Hora[1]~output_o\;

ww_Hora(2) <= \Hora[2]~output_o\;

ww_Hora(3) <= \Hora[3]~output_o\;

ww_Hora(4) <= \Hora[4]~output_o\;

ww_Minuto(0) <= \Minuto[0]~output_o\;

ww_Minuto(1) <= \Minuto[1]~output_o\;

ww_Minuto(2) <= \Minuto[2]~output_o\;

ww_Minuto(3) <= \Minuto[3]~output_o\;

ww_Minuto(4) <= \Minuto[4]~output_o\;

ww_Minuto(5) <= \Minuto[5]~output_o\;

ww_Segundo(0) <= \Segundo[0]~output_o\;

ww_Segundo(1) <= \Segundo[1]~output_o\;

ww_Segundo(2) <= \Segundo[2]~output_o\;

ww_Segundo(3) <= \Segundo[3]~output_o\;

ww_Segundo(4) <= \Segundo[4]~output_o\;

ww_Segundo(5) <= \Segundo[5]~output_o\;

ww_Frac(0) <= \Frac[0]~output_o\;

ww_Frac(1) <= \Frac[1]~output_o\;

ww_Frac(2) <= \Frac[2]~output_o\;

ww_Frac(3) <= \Frac[3]~output_o\;

ww_Frac(4) <= \Frac[4]~output_o\;

ww_Frac(5) <= \Frac[5]~output_o\;

ww_Frac(6) <= \Frac[6]~output_o\;

ww_Frac(7) <= \Frac[7]~output_o\;

ww_Frac(8) <= \Frac[8]~output_o\;

ww_Frac(9) <= \Frac[9]~output_o\;

ww_Frac(10) <= \Frac[10]~output_o\;

ww_Frac(11) <= \Frac[11]~output_o\;

ww_Frac(12) <= \Frac[12]~output_o\;

ww_Frac(13) <= \Frac[13]~output_o\;

ww_buzzer <= \buzzer~output_o\;
END structure;


