library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pwm_generator is
  port (
    clk        : in  std_logic;
    reset      : in  std_logic;
    duty_cycle : in  unsigned(7 downto 0);  -- 0 to 255
    pwm_out    : out std_logic
  );
end pwm_generator;

architecture behavior of pwm_generator is
  signal counter : unsigned(7 downto 0) := (others => '0');
begin
  process(clk, reset)
  begin
    if reset = '1' then
      counter  <= (others => '0');
      pwm_out <= '0';
    elsif rising_edge(clk) then
      counter <= counter + 1;
      if counter < duty_cycle then
        pwm_out <= '1';
      else
        pwm_out <= '0';
      end if;
    end if;
  end process;
end behavior;
