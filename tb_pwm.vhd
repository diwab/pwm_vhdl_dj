library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_pwm is
end tb_pwm;

architecture sim of tb_pwm is
  signal clk        : std_logic := '0';
  signal reset      : std_logic := '1';
  signal duty_cycle : unsigned(7 downto 0) := x"80"; -- 50% duty
  signal pwm_out    : std_logic;

  constant clk_period : time := 20 ns; -- 50 MHz clock

begin
  uut: entity work.pwm_generator
    port map (
      clk        => clk,
      reset      => reset,
      duty_cycle => duty_cycle,
      pwm_out    => pwm_out
    );

  clk_process: process
  begin
    while now < 2 ms loop
      clk <= '0'; wait for clk_period / 2;
      clk <= '1'; wait for clk_period / 2;
    end loop;
    wait;
  end process;

  stim_proc: process
  begin
    wait for 50 ns;
    reset <= '0';
    wait for 1 us;
    duty_cycle <= x"40"; -- 25%
    wait for 1 us;
    duty_cycle <= x"C0"; -- 75%
    wait;
  end process;
end sim;
