obj-m += soft_uart.o

soft_uart-objs := module.o gpio_soft_uart.o queue.o

all:
	$(MAKE) -C $(LINUX_DIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(LINUX_DIR) M=$(PWD) clean
