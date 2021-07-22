import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Platform_GetPlayerDataStorageInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetPlayerDataStorageInterface_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_Platform_Release = { Handle in
                GTest.current.sdkReceived.append("EOS_Platform_Release")
                XCTAssertNil(Handle)
            }
            
            // Given implementation for SDK function
            __on_EOS_Platform_GetPlayerDataStorageInterface = { Handle in
                GTest.current.sdkReceived.append("EOS_Platform_GetPlayerDataStorageInterface")
                XCTAssertNil(Handle)
                return nil
            }
            defer { __on_EOS_Platform_GetPlayerDataStorageInterface = nil }
            
            // Given Actor
            let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_PlayerDataStorage_Actor = object.GetPlayerDataStorageInterface()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Platform_GetPlayerDataStorageInterface"])
            XCTAssertNil(result.Handle)
        }
        
        // Then
        __on_EOS_Platform_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Platform_GetPlayerDataStorageInterface", "EOS_Platform_Release"])
    }
}
