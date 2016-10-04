----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:48:58 09/26/2016 
-- Design Name: 
-- Module Name:    minimux - Behavioral 
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

entity minimux is
    Port ( add4 : in  STD_LOGIC_VECTOR (4 downto 0);
           and4 : in  STD_LOGIC_VECTOR (3 downto 0);
           or4 : in  STD_LOGIC_VECTOR (3 downto 0);
           xor4 : in  STD_LOGIC_VECTOR (3 downto 0);
           comp : in  STD_LOGIC_VECTOR (3 downto 0);
           count : in  STD_LOGIC_VECTOR (3 downto 0);
           parity : in  STD_LOGIC;
           choice : in  STD_LOGIC_VECTOR (4 downto 0);
           s : out  STD_LOGIC_VECTOR (4 downto 0));
end minimux;

architecture Behavioral of minimux is

begin
   
    with choice select
        s <= add4 when "00000",
             '0' & and4 when "00001",     -- D9
             '0' & or4 when "00010",      -- C4
             '0' & xor4 when "00011",     -- D9 + C4
             '0' & comp when "00100",     -- A8
             '0' & count when "10000",    -- B8
             "0000" & parity when others; -- C9
				 
end Behavioral;

