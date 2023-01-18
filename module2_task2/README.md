# **Testing in the Software Development Methodology**

## **Prerequisites**

**Concepts**<br>
<u>You should have a basic knowledge on the following concepts:</u>

**_What a compiled language is (C/C#/Golang/Rust/etc.)_**

- Generation process from source to executable binary
- Basic types: string, integer, boolean, maps, arrays
- Basic algorithmic: loops, conditional, functions
- Installing command line tools with NPM (in addition to package managers)

**_Understand the basics of the HTTP protocol (client/server, verbs, headers)_**

This project needs the following tools / services:

Same tools as previous module
Golang in v1.15._
NPM v7+ with NodeJS v14._ (stable)
Python 3 with pip module

## **Learnings Go-als**

- Understand what linting is the extent of its usages (which kind of file can be linted, and the impact of running it often)
- Understand the difference between unit tests and integration tests
- Use code coverage as a helper to write tests
- Understand that not only “classical” code is to be tested, but also a lot of the artifacts we can generate
- Understand how “component”-based testing for acceptance and end to end validation is to be used

# **Lifecycle- using makefile Targets**

- Target lint: lint the golang code, if fails build don't run
- Target build: compile source code of the application to a binary executable
- Target run: run the app in the background
- Target stop: stop the application using kill
- Target clean: Delete binary executable and log file
- Target test: Run some tests to ensure if behaves as expected
- Target help: display help for using the makefile commands
- Target unit-tests: run go test
