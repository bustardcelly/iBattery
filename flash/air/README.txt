> /{SDK}/bin/mxmlc +configname=airmobile -output build/iBatteryExample.swf src/iBatteryExample.mxml -load-config+=battery_app.config

> cp src/iBatteryExample-app.xml build/iBatteryExample-app.xml

> cd build

> /{SDK}/bin/adt -package -target ipa-test-interpreter -provisioning-profile {path.to}.mobileprovision -storetype pkcs12 -keystore {path.to}.developer_identity.p12 -storepass {pass} ../release/iBatteryExample.ipa iBatteryExample-app.xml iBatteryExample.swf -extdir ../ext/