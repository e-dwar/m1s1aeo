----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:52:19 09/27/2016 
-- Design Name: 
-- Module Name:    count - Behavioral 
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
library IEEE;use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity count is
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           s : out  STD_LOGIC_VECTOR (3 downto 0));
end count;

architecture Behavioral of count is

begin	process(a)
	variable n : integer;
	
	begin
		n := 0;
		for i in 0 to 7 loop 
			if a(i) = '1' then
				n := n + 1;
			end if;
		end loop;
	   for i in 0 to 3 loop
			if (n mod 2) = 1 then 
				 s(i) <= '1';
			end if;
			if (n mod 2) = 0 then 
				 s(i) <= '0';
			end if; 
			n := n / 2;
	   end loop;
	end process;
end Behavioral;

