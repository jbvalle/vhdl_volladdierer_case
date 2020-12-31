----------------------------------------------------------------------------------
-- Engineer: John Bryan Valle
-- 
-- Create Date: 30.12.2020 13:49:55
-- Design Name: Volladdierer
-- Module Name: volladdierer - Verhalten
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use ieee.numeric_std.all; 

entity volladdierer is
    Port ( AIN : in STD_LOGIC;
           BIN : in STD_LOGIC;
           CIN : in STD_LOGIC;
           COUT : out STD_LOGIC;
           SOUT : out STD_LOGIC);
end volladdierer;

architecture Verhalten of volladdierer is
begin
addition: process(AIN, BIN, CIN)
    variable TEMP_in: std_logic_vector(2 downto 0);
    variable TEMP_out: std_logic_vector(1 downto 0);
    begin  
        TEMP_in := CIN & BIN & AIN;
        case TEMP_in is
            when "000" => TEMP_out := "00";
            when "001" => TEMP_out := "00";
            when "010" => TEMP_out := "00";
            when "011" => TEMP_out := "00";
            when "100" => TEMP_out := "00";
            when "111" => TEMP_out := "00";
            when "100" => TEMP_out := "00";
            when "111" => TEMP_out := "00";
        end case;
        SOUT <= TEMP_out(0);
        COUT <= TEMP_out(1);
    end process addition;
end Verhalten;
