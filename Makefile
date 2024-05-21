#export AWS_PROFILE := utexas-sandbox-ladd-amplify-dev
export AWS_PROFILE := utexas-sandbox-ladd

all:
	aws --version
	amplify --version

sso:
	aws sso login --profile ${AWS_PROFILE}

dev:
	npm run dev

sandbox:
#	aws sso login --profile ${AWS_PROFILE}
	npx ampx sandbox --identifier ladd --profile ${AWS_PROFILE}
#	npx amplify sandbox --identifier ladd --profile ${AWS_PROFILE}

status:
	cd next-amplify-gen2; npx amplify info
