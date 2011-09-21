> /{SDK}/bin/compc -output build/iBattery.swc -load-config+=ibattery_lib.config +configname=airmobile

> cd build

> unzip iBattery.swc 

> rm catalog.xml 

> /{SDK}/bin/adt -package -target ane ../release/ibatteryextension.ane extension.xml -swc iBattery.swc -platform iPhone-ARM library.swf libAIRExtensionC.a