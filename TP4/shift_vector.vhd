----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:19:31 10/04/2016 
-- Design Name: 
-- Module Name:    shift_vector - Behavioral 
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

entity shift_vector is
    Port ( clk : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end shift_vector;

architecture Behavioral of shift_vector is

	COMPONENT clkdiv
	PORT(
		clk : IN std_logic;          
		clkdiv : OUT std_logic
		);
	END COMPONENT;
	
	signal clksig : std_logic;
	
	

begin

	Inst_clkdiv: clkdiv PORT MAP(
		clk => clk,
		clkdiv => clksig
	);
	

	process(clksig)
	variable temp : std_logic_vector(7 downto 0) := "00000001";
	begin
		if clksig'event and clksig = '1' then
			temp(7) := temp(0);
			temp(0) := temp(1);
			temp(1) := temp(2);
			temp(2) := temp(3);
			temp(3) := temp(4);
			temp(4) := temp(5);
			temp(5) := temp(6);
			temp(6) := temp(7);
		end if;
		led <= temp;
	end process;
end Behavioral;

