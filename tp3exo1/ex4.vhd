----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:59:17 09/27/2016 
-- Design Name: 
-- Module Name:    ex4 - Behavioral 
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

library ieee; 
use ieee.std_logic_1164.all; 
entity ex4 is 
 port ( A : in std_logic_vector(1 downto 0); 
        B, C, D, E : in std_logic; 
        F, G, H : out std_logic); 
end ex4; 

architecture synthesizable of ex4 is 
begin 
 process (A, B, C, D, E) 
   begin 
     case A is 
       when "00" => F <= B; H <= B; 
       when "01" => F <= C; G <= B; H <= C; 
       when "10" => G <= B; H <= D; 
       when "11" => H <= E; 
       when others => null; 
     end case; 
 end process; 
end synthesizable; 