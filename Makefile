#WorkFlow en Flutter
## Comandos de Flutter
logo:
	@echo "┌──────────────────────────────────────────────┐"
	@echo "│ ███████╗███████╗███╗   ██╗████████╗██╗   ██╗ │"
	@echo "│ ██╔════╝██╔════╝████╗  ██║╚══██╔══╝██║   ██║ │"
	@echo "│ ███████╗█████╗  ██╔██╗ ██║   ██║   ██║   ██║ │"
	@echo "│ ╚════██║██╔══╝  ██║╚██╗██║   ██║   ██║   ██║ │"
	@echo "│ ███████║███████╗██║ ╚████║   ██║   ╚██████╔╝ │"
	@echo "│ ╚══════╝╚══════╝╚═╝  ╚═══╝   ╚═╝    ╚═════╝  │"
	@echo "└─────────────────────────────────────┤studio├─┘"
	@echo ""
br: logo fpb fbr
	@echo "Build Runner completado"
fpb:
	flutter pub get
fbr:
	flutter pub run build_runner build --delete-conflicting-outputs
fw:
	flutter pub run build_runner watch --delete-conflicting-outputs
run: logo
	flutter run --verbose
test: logo
	@echo "Prueba de concepto"
ilogo:
	flutter packages get
	flutter packages pub run flutter_launcher_icons:main


## Comandos del dispositivo Android adb
home_sdk="$$HOME/Android/Sdk/"
home_adb="$(home_sdk)platform-tools/"
dwifi: logo
#Debe estar el dispositivo conectado por usb y el comando ejecutado fuera de docker
	$(home_adb)./adb tcpip 5555
	$(home_adb)./adb device
	
device: logo
	$(home_adb)./adb connect 192.168.0.11:5555
	$(home_adb)./adb devices

dinfo: logo
	$(home_adb)./adb devices

drestart: logo
	$(home_adb)./adb kill-server
	$(home_adb)./adb start-server
	$(home_adb)./adb devices

# Emulador
home_emulator="$(home_sdk)/emulator/"
erun: logo
	$(home_emulator)./emulator @SENTU -no-boot-anim -netdelay none -no-snapshot -wipe-data -skin 1080x1920 &

els: logo
	$(home_emulator)./emulator -list-avds

#sdkmanager
sdkinfo: logo
	$(home_sdk)tools/bin/./sdkmanager --list

#Solucionar problemas con diferentes versiones de flutter
solvefv: logo
	flutter channel stable
	flutter upgrade --force
	flutter pub cache repair
	flutter clean
	flutter doctor -v

info: logo mcomandos


mcomandos:
	@echo "    Comandos:"
	@echo "       ├── flutter: [br, fbp, fbr, run, test]"
	@echo "       ├── adb: [dwifi,device,dinfo,drestart]"
	@echo "       ├── emulador: [erun,els]"
	@echo "       └── sdkmanager: [sdkinfo]"
	@echo "    Forzar configuracion correcta de Flutter: [solvefv]"
	@echo ""
	@echo ""