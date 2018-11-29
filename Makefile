PROJECT_NAME=ObjcStaticFramework
PROJECT_FILE_PATH=${PROJECT_NAME}.xcodeproj
BUILD_DIR=./build
SONAR_BW_OUTPUT_DIR?=bw-output

build-for-sonar:
	xcodebuild -configuration Debug clean build > /dev/null

sonar-cloud-travis:
	@echo "=== build for analyze ==="
	build-wrapper-macosx-x86 --out-dir ${SONAR_BW_OUTPUT_DIR} make build-for-sonar
	@echo "=== analyze ==="
	sonar-scanner -X \
		-Dsonar.login=${SONAR_TOKEN} \
		-Dsonar.cfamily.build-wrapper-output=${SONAR_BW_OUTPUT_DIR} \
		-Dsonar.pullrequest.base=${TRAVIS_BRANCH} \
		-Dsonar.pullrequest.branch=${TRAVIS_PULL_REQUEST_BRANCH} \
		-Dsonar.pullrequest.key=${TRAVIS_PULL_REQUEST} \
		-Dsonar.pullrequest.provider=GitHub \
		-Dsonar.pullrequest.github.repository=simorgh3196/${PROJECT_NAME} \
	@rm -rf ${SONAR_BW_OUTPUT_DIR}
