CC = gcc

# DEV AUTOMATION

status:
	git status

add:
	git add init
	git commit -m "chore: deleted init"

	git add CONTRIBUTING.md
	git commit -m "chore: added CONTRIBUTING.md"

	git add CONTRIBUTORS.md
	git commit -m "chore: added CONTRIBUTORS.md"

	git add LICENSE
	git commit -m "chore: added LICENSE"

	git add README.md
	git commit -m "chore: added README.md"

	git add auto/
	git commit -m "chore: added auto/"

	git add bootCDROM.c
	git commit -m "chore: added bootCDROM.c"

	git add bootHardDisk.c
	git commit -m "chore: added bootHardDisk.c"

	git add contributing/
	git commit -m "chore: added contributing/"

	git add helpers/
	git commit -m "chore: added helpers/"

	git add shell/
	git commit -m "chore: added shell/"

	git add vmInit.c
	git commit -m "chore: added vmInit.c"

	git add zyphor-server-config/
	git commit -m "chore: added zyphor-server-config/"

	git add Makefile
	git commit -m "chore: modified Makefile"

	
	
	
	
	
	
	
	


push:
	git push origin $(branch)

pull:
	git pull origin $(branch)

merge:
	git merge $(branch)

switch:
	git checkout $(branch)

vmInit:
	$(CC) vmInit.c \
	 helpers/helperInput.c \
	 helpers/helperString.c \
	 -o vmInit

bootHardDisk:
	$(CC) bootHardDisk.c \
	 helpers/helperInput.c \
	 helpers/helperString.c \
	 -o bootHardDisk

bootCDROM:
	$(CC) bootCDROM.c \
	 helpers/helperInput.c \
	 helpers/helperString.c \
	 -o bootCDROM

clean:
	rm -f vmInit bootHardDisk bootCDROM