generateApkDebug:
	@echo "-- [APP] gerando apk debug ... --"
	@flutter build apk --debug

generateApkRelease:
	@echo "-- [APP] gerando apk release ... --"
	@flutter build apk --release

generateAppBundle:
	@echo "-- [APP] gerando appbundle release ... --"
	@flutter build appbundle --release

generateIpa:
	@echo "-- [APP] gerando ipa release ... --"
	@flutter build ipa --release

reset: 
	@echo "-- [APP] Resetando o Projeto!! ... --"
	flutter clean &&\
	flutter pub get &&\
	make build_runner

clean:
	@echo "-- [APP] Limpando o Projeto!! ... --"
	@rm -rf pubspec.lock
	@flutter clean

build_runner_clean:
	@echo "-- [APP] Limpando o build_runner ... --"
	@(dart run build_runner clean)

build_runner: build_runner_clean
	@echo "-- [APP] build_runner build ... --"
	@(dart run build_runner build --delete-conflicting-outputs)
	