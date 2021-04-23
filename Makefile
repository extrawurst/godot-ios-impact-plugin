clean:
	rm -rf bin/*.xcframework | true
	rm bin/*.a | true

build-godot:
	cd godot && scons platform=iphone target=release

build: build-debug build-release

build-release:
	./scripts/gen_framework.sh iosimpact release 3.3

build-debug:
	./scripts/gen_framework.sh iosimpact debug 3.3