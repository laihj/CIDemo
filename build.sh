export LANG=en_US.UTF-8
pod install
xctool -workspace CIDemo.xcworkspace -scheme CIDemoTest build BUILD_DIR=$WORKSPACE"/build/"$BUILD_NUMBER
xcrun -sdk iphoneos PackageApplication -v $WORKSPACE"/build/Debug-iphoneos/CIDemo copy.app" -o $WORKSPACE"/build/"$BUILD_NUMBER"/testabc.ipa"