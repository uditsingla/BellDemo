default:
	# Set default make action here
	# xcodebuild -target CustomTabbarTests -configuration MyMainTarget -sdk iphonesimulator build	

      xcodebuild -target “CustomTabbarTests (Device)” -configuration Release
      xcodebuild -target “CustomTabbarTests (Simulator)” -configuration Release
      BUILD_DIR-“build” BUILD_STYLE-“Release” sh ../Scripts/CombineLibs.sh
      sh ../Scripts/iPhoneFramework.sh

clean:
	-rm -rf build/*

test:
	GHUNIT_CLI=1 xcodebuild -target CustomTabbarTests -configuration Debug -sdk iphonesimulator build

