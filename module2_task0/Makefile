build: ## build: compile source code of application to a binary
	go mod init github.com/HINKOKO/awesome-api
	go build
run: ## run: Run the app in background by executing the binary
	./awesome-api >./awesome.log 2>&1 &
stop: ## stop: stop the application using shell command "kill"
	kill "$(pgrep awesome-api)"
clean: ## clean: Delete the binary and the log file
	rm awesome-api
	rm awesome-api.log
test: ## test: run tests to ensure it behaves as expected
	curl http://localhost:9999
	curl http://localhost:9999/health
help: ## help: display help for this Makefile
	cat Makefile | grep '##' | tr -d '##' | head -n -1

