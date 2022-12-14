--------------------------------------------------------------------------------
--
-- Filename: 	busyctr.vhd
-- {{{
-- Project:	A set of Yosys Formal Verification exercises
--
-- Background:	
--
-- #1, To Prove:
--	1. Assume that once raised, i_start_signal will remain high until it
--		is both high and the counter is no longer busy.
--		Following (i_start_signal)&&(!o_busy), i_start_signal is no
--		longer constrained--until it is raised again.
--	2. o_busy will *always* be true any time the counter is non-zero.
--	3. If the counter is non-zero, it should always be counting down
--
-- #2, To Prove:
--	1. First, adjust o_busy to be a clocked signal/register
--	2. Prove that it will only ever be true when the counter is non-zero
--
-- Creator:	Dan Gisselquist, Ph.D.
--		Gisselquist Technology, LLC
--
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- }}}
-- Copyright (C) 2017-2021, Gisselquist Technology, LLC
-- {{{
-- This program is free software (firmware): you can redistribute it and/or
-- modify it under the terms of  the GNU General Public License as published
-- by the Free Software Foundation, either version 3 of the License, or (at
-- your option) any later version.
--
-- This program is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTIBILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details.
--
-- You should have received a copy of the GNU General Public License along
-- with this program.  (It's in the $(ROOT)/doc directory.  Run make with no
-- target there if the PDF file isn't present.)  If not, see
-- <http://www.gnu.org/licenses/> for a copy.
-- }}}
-- License:	GPL, v3, as defined and found on www.gnu.org,
-- {{{
--		http://www.gnu.org/licenses/gpl.html
--
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
-- }}}
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity	busyctr is
	generic(MAX_AMOUNT: natural := 22);
	port (i_clk, i_reset, i_start_signal : in std_logic;
		o_busy : out std_logic := '0');
end entity busyctr;

architecture behavior of busyctr is
	signal	counter : unsigned(15 downto 0) := to_unsigned(0, 16);
begin

---
---
process(i_clk)
begin
	if (rising_edge(i_clk)) then
		if (i_reset) then
			counter <= to_unsigned(0, 16);
		elsif ((i_start_signal = '1') and (0 = counter)) then
			counter <= to_unsigned(MAX_AMOUNT-1,16);
		elsif (0 /= counter) then
			counter <= counter - 1;
		end if;
	end if;
end process;

process(all)
begin
	if (0 = counter) then
		o_busy <= '0';
	else
		o_busy <= '1';
	end if;
end process;

----
----
end behavior;
