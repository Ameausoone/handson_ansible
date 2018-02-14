# Makefile

# -----------------------------------------------------------------
#        Main targets
# -----------------------------------------------------------------

help: ## print this message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'

generate: ## Generate HTML slides in ./docs/index.html
	docker-compose up

pdf: generate  ## Generate PDF slides from HTML slides in ./docs/slides.pdf
	docker-compose run build-slides asciidoctor-pdf -D /documents/docs -o slides.pdf /documents/slides.adoc
