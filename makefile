a
ZZZZZZl: BootLoader Disk.img

BootLoader:
	@echo
	@echo ========== Build Boot Loader ==============
	@echo

	make -C 00.bootloader
	
	@echo
	@echo ========== Build Complete =================
	@echo
	
Disk.img: 00.bootloader/bootloader.bin
	@echo
	@echo ========== Disk Image Build Start =========
	@echo
	
	cp 00.bootloader/bootloader.bin Disk.img
	
	@echo
	@echo ========== All Build Complete =============
	@echo
	
Clean:
	make -C 00.bootloader clean
	rm -f Disk.img
