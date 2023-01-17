lint: ## linting the golang code, if failure build shouldn't run
	curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.50.1
	golangci-lint run
build: ## build: compile source code of application to a binary
	make lint
	go mod init github.com/HINKOKO/awesome-api
	go build
run: ## run: Run the app in background by executing the binary
	./awesome-api >./awesome.log 2>&1 &
stop: ## stop: stop the application using shell command "kill"
	pgrep awesome-api | xargs kill
clean: ## clean: Delete the binary and the log file
	make stop
	rm -rf awesome-api
	rm awesome.log
test: ## test: run tests to ensure it behaves as expected
	curl http://localhost:9999
	curl http://localhost:9999/health
help: ## help: display help for this Makefile
	cat Makefile | grep '##' | tr -d '##' | head -n -1

