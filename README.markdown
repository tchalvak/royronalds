Repository for the code of [RoyRonalds.com](http://royronalds.com) http://royronalds.com

This site structure is also useful as a template.

## Install

yarn set version stable
yarn install

## Test

yarn test


## Other commands

yarn run

## Infrastructure

On AWS Cloudfront:

 - https://us-east-1.console.aws.amazon.com/cloudfront/v3/home?region=us-east-1#/distributions/E2A3KKT01N8DGV



## Non-CI Deployment

```
    aws sts get-caller-identity
    cat ~/.aws/profiles | grep "-dev"
    # Update ~/.aws/credentials as needed
    ./deploy.sh
```
