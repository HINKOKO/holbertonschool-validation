
help: ## showing help documentation
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
build:		## Generates the website from the markdown and configuration files (inside dist/)
	hugo
clean:		## Cleanup the content of the directory dist/
	rm -rf dist/*
post:		## Create a new blog post whose filename and title come from env var POST_TITLE and POST_NAME
	hugo new content/posts/$(POST_NAME).md
# -i option to edit file in place
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md
lint: ## runs linter for .md file and shell script
	markdownlint README.md DEPLOY.md
	shellcheck setup.sh

unit-tests: ## runs several steps of make to test the functionality
	make POST_TITLE='Hot test' POST_NAME='whats love got to do with it?' post
	make build
	make clean

integration-tests: ## runs post and build command to check for integration success
	make POST_TITLE='Integration Party' POST_NAME='Please let me be part of the party' post
	make build
validate: ## validate that we are in the correct directory
	pwd
package: ## creates an archive 
	make build
	zip awesome-website.zip dist/
