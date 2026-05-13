ENVIRONMENT ?= production
version:  ## Print the version for the current commit
	@sha=$$(git describe --tags --always --dirty); \
	if [ "$(ENVIRONMENT)" = "staging" ]; then \
		echo "$${sha}-staging"; \
	else \
		echo "$${sha}"; \
	fi
