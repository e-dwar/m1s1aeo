----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:51:33 09/27/2016 
-- Design Name: 
-- Module Name:    ex2 - Behavioral 
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

entity DEC is port(
    E: in std_logic_vector(1 downto 0); 
    S: out std_logic_vector(3 downto 0)); 
end;

architecture FLOT_MUX of DEC is
begin
    process (E)
    variable N : integer; 
    begin 
        N := 0; 
        
        if E(0) = '1' then N := N + 1; end if; 
        if E(1) = '1' then N := N + 2; end if; 
        S <= "0000"; 
        
        for I in 0 to 3 loop 
            if I = N then 
                S(I) <= '1'; 
            end if; 
        end loop; 
    end process; 
end;
