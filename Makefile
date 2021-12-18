.PHONY: help
help: ## Print this help message and exit
	@echo Usage:
	@echo "  make [target]"
	@echo
	@echo Targets:
	@awk -F ':|##' \
		'/^[^\t].+?:.*?##/ {\
			printf "  %-30s %s\n", $$1, $$NF \
		 }' $(MAKEFILE_LIST)

.PHONY: test 
test: ## execute neuralink unittest suite
	@./scripts/test.sh

.PHONY: lint
lint: ## cpplint codebase following google standards
	@./scripts/lint.sh

.PHONY: config
config: ## setup cmake project
	@./scripts/init.sh

.PHONY: build 
build: ## build cmake project
	@./scripts/build.sh

.PHONY: run 
run: ## run code
	@./build/Exponent

.PHONY: clean
clean: ## clean cmake project configuration and build
	@./scripts/clean.sh
