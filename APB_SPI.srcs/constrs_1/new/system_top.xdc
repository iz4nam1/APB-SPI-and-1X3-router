# Clock constraint for APB-SPI system
# Target frequency: 100 MHz
# Clock period: 10 ns

create_clock -name PCLK -period 10.000 [get_ports PCLK]