----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:02:40 09/27/2016 
-- Design Name: 
-- Module Name:    parity - Behavioral 
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

entity parity is
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           s : out  STD_LOGIC);
end parity;

 architecture Behavioral of parity is

begin
	process(a)
	variable N : std_logic;
	
	begin
		N := '0'; 
		for I in 0 to 7 loop 
			N := a(I) xor N;
      end loop;
		s <= N;
	end process;


end Behavioral;

