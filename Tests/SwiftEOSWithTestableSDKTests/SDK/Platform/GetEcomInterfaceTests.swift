import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Platform_GetEcomInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetEcomInterface_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_Platform_Release = { Handle in
                GTest.current.sdkReceived.append("EOS_Platform_Release")
                XCTAssertNil(Handle)
            }
            
            // Given implementation for SDK function
            __on_EOS_Platform_GetEcomInterface = { Handle in
                GTest.current.sdkReceived.append("EOS_Platform_GetEcomInterface")
                XCTAssertNil(Handle)
                return nil
            }
            defer { __on_EOS_Platform_GetEcomInterface = nil }
            
            // Given Actor
            let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Ecom_Actor = object.GetEcomInterface()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Platform_GetEcomInterface"])
            XCTAssertNil(result.Handle)
        }
        
        // Then
        __on_EOS_Platform_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Platform_GetEcomInterface", "EOS_Platform_Release"])
    }
}
