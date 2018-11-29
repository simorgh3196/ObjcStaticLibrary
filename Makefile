PROJECT_ROOT=ObjcStaticFramework
PROJECT_NAME?=${PROJECT_ROOT}/${TARGET_NAME}.xcodeproj
BUILD_DIR?=./build
SONAR_OUTPUT_DIR=bw-output

build-debug:
	 xcodebuild -configuration Debug clean build

sonar-cloud:
	build-wrapper-macosx-x86 --out-dir ${SONAR_OUTPUT_DIR} make build-debug
	sonar-scanner -X \
		-Dsonar.login=${SONAR_TOKEN} \
		-Dsonar.cfamily.build-wrapper-output=${SONAR_OUTPUT_DIR}
	rm -rf ${SONAR_OUTPUT_DIR}
