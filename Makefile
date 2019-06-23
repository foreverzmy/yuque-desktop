
dev-go:
	hover run

dev: 
	export ENABLE_FLUTTER_DESKTOP=true && export LC_NUMERIC="en_US.UTF-8" && flutter run

json:
	flutter packages pub run build_runner build

build-android:
	flutter build apk