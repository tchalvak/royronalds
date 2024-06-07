.PHONY: all deb build clean test

# Can just copy these to a CONFIG and overwrite, or create your own ./configure script or whatever
DEPLOY_TARGET=production
DEPLOY_BUCKET=
DEPLOY_PROFILE=

-include CONFIG

browse-repo:
	xdg-open https://github.com/tchalvak/royronalds/pulls

local-dev:
	./scripts/dockerize.sh


deploy:
	@echo "Depending on aws cli, and aws credentials being set up"
	@echo "Here are your current credentials:"
	cat ~/.aws/config | grep dev
	@echo "Update aws profile and credentials as needed"
	aws s3 sync www s3://$(DEPLOY_BUCKET) --profile $(DEPLOY_PROFILE)
	@echo "Deploying to $(DEPLOY_TARGET)"
