----------------------------------------------------------------------------------
-- Company:        ITESM - CQ
-- Engineer:       Equipo GR
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    Top - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    CPU
--
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
Library ieee;
Use ieee.std_logic_1164.all;

Entity Increm is 
  port (	InA	: in std_logic_vector(7 downto 0);
			InB	: in std_logic_vector(7 downto 0);
			Sel 	: in std_logic;
			M 		: out std_logic_vector(7 downto 0));
end Increm;

Architecture a of Increm is

Begin
	increm1: process(Sel)
	Begin
		if (Sel = '0') then
			M <= InA;
		elsif (Sel = '1') then
			M <= InB;
		else
			M <= InB;
		end if;
	end process increm1;
end a;