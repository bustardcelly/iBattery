//
//  cbatterylife.m
//  AIRExtensionC
//
//  Created by Todd Anderson
//  Copyright 2011 custardbelly.com. All rights reserved.
//

#include "FlashRuntimeExtensions.h"

#import <UIKit/UIKit.h>

// Access battery life.
FREObject GetBatteryLife(FREContext ctx, void* funcData, uint32_t argc, FREObject argv[]) {
	
	UIDevice *device = [UIDevice currentDevice];
	[device setBatteryMonitoringEnabled:YES];
	float life = [device batteryLevel];
	
	FREObject retVal;
	FRENewObjectFromDouble( life, &retVal );
	return retVal;
}

// Access info about battery
FREObject GetBatteryInfo(FREContext ctx, void* funcData, uint32_t argc, FREObject argv[]) {
	UIDevice *device = [UIDevice currentDevice];
	[device setBatteryMonitoringEnabled:YES];
	int info = [device batteryState];
	
	FREObject retVal;
	FRENewObjectFromInt32( info, &retVal );
	return retVal;
}

// A native context instance is created
void ContextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx, uint32_t* numFunctionsToTest, const FRENamedFunction** functionsToSet) {
	*numFunctionsToTest = 2;
	FRENamedFunction* func = (FRENamedFunction*)malloc(sizeof(FRENamedFunction)*2);
	func[0].name = (const uint8_t*)"GetBatteryLife";
	func[0].functionData = NULL;
	func[0].function = &GetBatteryLife;
	
	func[1].name = (const uint8_t*)"GetBatteryInfo";
	func[1].functionData = NULL;
	func[1].function = &GetBatteryInfo;
	
	*functionsToSet = func;
}

// A native context instance is disposed
void ContextFinalizer(FREContext ctx) {
	return;
}

// Initialization function of each extension
void ExtInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet, FREContextFinalizer* ctxFinalizerToSet) {
	*extDataToSet = NULL;
	*ctxInitializerToSet = &ContextInitializer;
	*ctxFinalizerToSet = &ContextFinalizer;
}

// Called when extension is unloaded
void ExtFinalizer(void* extData) {
	return;
}

