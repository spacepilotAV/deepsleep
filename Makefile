macos:
	clang src/deepsleep.c -o deepsleep_macos -framework IOKit -framework CoreFoundation

ios:
	xcrun -sdk iphoneos clang -arch armv7 src/deepsleep.c -o deepsleep -framework IOKit -framework CoreFoundation
	ldid -S deepsleep

install:
	make macos
	sudo cp deepsleep_macos /usr/local/bin/deepsleep
