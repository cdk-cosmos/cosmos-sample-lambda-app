function_filename := function-${APP_BUILD_VERSION}.zip

version::
	@echo ${CODEBUILD_BUILD_NUMBER}

install::
	@cd src && npm i --only=prod

build::
	@`[ -d build ] && rm -rf build` || true
	@mkdir build
	@cp -R src/* build

zip::
	@echo "zipping function..."
	@cd build && zip -r -q ../${function_filename} *

push::
	@aws s3 cp ${function_filename} s3://${CODE_BUCKET}