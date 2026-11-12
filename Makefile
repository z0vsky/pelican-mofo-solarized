PELICAN    ?= pelican
PYGMENTIZE ?= pygmentize

DEMO   := demo
OUTPUT := $(DEMO)/output
PORT   ?= 8000

# Colour schemes for the demo: light, dark or system.
COLOR ?= system
CODE  ?= system
DEMO_ENV := MOFO_COLOR_SCHEME=$(COLOR) MOFO_CODE_SCHEME=$(CODE)

.DEFAULT_GOAL := help
.PHONY: help css demo serve clean

help: ## Show this help
	@grep -E '^[a-z]+:.*## ' $(MAKEFILE_LIST) | awk -F ':.*## ' '{printf "  make %-6s %s\n", $$1, $$2}'
	@echo
	@echo "  Options: COLOR=light|dark|system  CODE=light|dark|system  PORT=$(PORT)"

css: ## Regenerate the Pygments code highlighting stylesheets
	$(PYGMENTIZE) -S solarized-light -f html -a .highlight > static/css/code-light.css
	$(PYGMENTIZE) -S solarized-dark -f html -a .highlight > static/css/code-dark.css

demo: ## Build the demo site into demo/output
	$(DEMO_ENV) $(PELICAN) $(DEMO)/content -s $(DEMO)/pelicanconf.py -o $(OUTPUT) --delete-output-directory

serve: ## Build the demo site, serve it and rebuild on changes
	$(DEMO_ENV) $(PELICAN) $(DEMO)/content -s $(DEMO)/pelicanconf.py -o $(OUTPUT) --delete-output-directory --autoreload --listen --port $(PORT)

clean: ## Delete the demo site output
	rm -rf $(OUTPUT)
