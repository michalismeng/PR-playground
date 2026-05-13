ENVIRONMENT ?= production
version:  ## Print the version for the current commit
	@tag=$$(git tag --points-at HEAD | head -n1); \
	if [ -z "$${tag}" ]; then tag=$$(git rev-parse --short HEAD); fi; \
	if [ "$(ENVIRONMENT)" = "staging" ]; then \
		echo "$${tag}-staging"; \
	else \
		echo "$${tag}"; \
	fi
