VERSION := "0.1"
REPO_URL := "npenkov/oidc-auth-proxy"

.PHONY: build
build:
	docker build -t $(REPO_URL):$(VERSION) .

.PHONY: push
push:
	docker tag $(REPO_URL):$(VERSION) $(REPO_URL):latest
	docker push $(REPO_URL):$(VERSION)
	docker push $(REPO_URL):latest
