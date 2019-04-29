.DEFAULT_GOAL:=help
SHELL:=/bin/bash
GO111MODULE=on


LIB_NAME=oversight
LIB=github.com/joeblew99/oversight


help:  ## Display this help
	# from: https://suva.sh/posts/well-documented-makefiles/
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n\nTargets:\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)


test: ### test
	go test ./...

github-open: ### github-open
	open https://$(LIB)

travis-open: ### travis-open
	open https://travis-ci.org/joeblew99/$(LIB_NAME)/
