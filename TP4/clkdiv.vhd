----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:54:57 10/04/2016 
-- Design Name: 
-- Module Name:    clkdiv - Behavioral 
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

entity clkdiv is
    Port ( clk : in  STD_LOGIC;
           clkdiv : out  STD_LOGIC);
end clkdiv;

architecture Behavioral of clkdiv is

signal clk2 : std_logic := '0';

begin
	
	clkdiv <= clk2;

	process(clk)
	variable i : integer := 0;
	begin
		if clk'event and clk = '1' then
			i := i + 1;
			if i = 10000000 then
				i := 0;
				clk2 <= not clk2;
			end if;
		end if;
	end process;

end Behavioral;

