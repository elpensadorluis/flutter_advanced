#WorkFlow en Flutter
## Comandos de Flutter
br: fpb fbr
	@echo "Build Runner completado"
fpb:
	flutter pub get
fbr:
	flutter pub run build_runner build --delete-conflicting-outputs
run:
	flutter run
test:
	@echo "Prueba de concepto"

## Comandos del dispositivo Android adb
dwifi:
#Debe estar el dispositivo conectado por usb y el comando ejecutado fuera de docker
	./../../../../Android/Sdk/platform-tools/adb tcpip 5555
	./../../../../Android/Sdk/platform-tools/adb device
	
device:
	./../../../../Android/Sdk/platform-tools/adb connect 192.168.0.11:5555
	./../../../../Android/Sdk/platform-tools/adb devices

dinfo:
	./../../../../Android/Sdk/platform-tools/adb devices

drestart:
	./../../../../Android/Sdk/platform-tools/adb kill-server
	./../../../../Android/Sdk/platform-tools/adb start-server
	./../../../../Android/Sdk/platform-tools/adb devices

# Emulator
erun:
	./../../../../Android/Sdk/emulator/emulator @flutter_emulator -no-boot-anim -netdelay none -no-snapshot -wipe-data -skin 1080x1920 &

els:
	./../../../../Android/Sdk/emulator/emulator -list-avds

	

Sdkinfo:
	./../../../../Android/Sdk/tools/bin/sdkmanager --list