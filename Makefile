PELICAN    ?= pelican
PYTHON     ?= python3

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

css: ## Regenerate the code highlighting stylesheets (needs Pygments)
	$(PYTHON) tools/code_css.py solarized-light > static/css/code-light.css
	$(PYTHON) tools/code_css.py solarized-dark > static/css/code-dark.css

demo: ## Build the demo site into demo/output
	$(DEMO_ENV) $(PELICAN) $(DEMO)/content -s $(DEMO)/pelicanconf.py -o $(OUTPUT) --delete-output-directory

serve: ## Build the demo site, serve it and rebuild on changes
	$(DEMO_ENV) $(PELICAN) $(DEMO)/content -s $(DEMO)/pelicanconf.py -o $(OUTPUT) --delete-output-directory --autoreload --listen --port $(PORT)

clean: ## Delete the demo site output
	rm -rf $(OUTPUT)
