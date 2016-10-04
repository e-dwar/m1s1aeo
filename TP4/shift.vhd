----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:21:07 10/04/2016 
-- Design Name: 
-- Module Name:    shift - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shift is
    Port ( btn : in  STD_LOGIC_VECTOR (4 downto 0);
           sw : in  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end shift;

architecture Behavioral of shift is

	COMPONENT fpd
	GENERIC (init_value: STD_Logic  := '0');
	PORT(
		D : IN std_logic;
		clk : IN std_logic;          
		Q : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT clkdiv
	PORT(
		clk : IN std_logic;          
		clkdiv : OUT std_logic
		);
	END COMPONENT;
	
	signal Q0 : std_logic;
	signal Q1 : std_logic;
	signal Q2 : std_logic;
	signal Q3 : std_logic;
	signal Q4 : std_logic;
	signal Q5 : std_logic;
	signal Q6 : std_logic;
	signal Q7 : std_logic;
	signal clksig : std_logic;

begin

	Inst_clkdiv: clkdiv PORT MAP(
		clk => clk,
		clkdiv => clksig
	);

	d0: fpd PORT MAP(
		D => Q1 ,
		Q => Q0 ,
		clk => clksig
	);
	
	d1: fpd PORT MAP(
		D => Q2 ,
		Q => Q1 ,
		clk => clksig
	);
	
	d2: fpd PORT MAP(
		D => Q3 ,
		Q => Q2 ,
		clk => clksig
	);
	
	d3: fpd PORT MAP(
		D => Q4 ,
		Q => Q3 ,
		clk => clksig
	);
	
	d4: fpd PORT MAP(
		D => Q5 ,
		Q => Q4 ,
		clk => clksig
	);
	
	d5: fpd PORT MAP(
		D => Q6 ,
		Q => Q5 ,
		clk => clksig
	);
	
	d6: fpd PORT MAP(
		D => Q7 ,
		Q => Q6 ,
		clk => clksig
	);
	
	d7: fpd 
	GENERIC MAP(init_value => '1')
	PORT MAP(
		D => Q0 ,
		Q => Q7 ,
		clk => clksig
	);

	led <= Q7&Q6&Q5&Q4&Q3&Q2&Q1&Q0 ;

end Behavioral;

