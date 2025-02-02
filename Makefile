all: windows windows-arm linux linux-arm macos macos-arm

linux: dir
	GOOS=linux GOARCH=amd64 go build -o bin/avsrt-linux-x64.bin

linux-arm: dir
	GOOS=linux GOARCH=arm64 go build -o bin/avsrt-linux-arm64.bin

windows: dir
	GOOS=windows GOARCH=amd64 go build -o bin/avsrt-windows-x64.exe

windows-arm: dir
	GOOS=windows GOARCH=arm64 go build -o bin/avsrt-windows-arm64.exe

macos: dir
	GOOS=darwin GOARCH=amd64 go build -o bin/avsrt-macos-x64.bin

macos-arm: dir
	GOOS=darwin GOARCH=arm64 go build -o bin/avsrt-macos-arm64.bin

dir:
	mkdir -p bin

clean:
	rm -rf bin
