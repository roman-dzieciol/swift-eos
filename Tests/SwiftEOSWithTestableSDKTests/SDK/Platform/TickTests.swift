import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Platform_TickTests: XCTestCase {
    public func testEOS_Platform_Tick_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_Platform_Release = { Handle in
                GTest.current.sdkReceived.append("EOS_Platform_Release")
                XCTAssertNil(Handle)
            }
            
            // Given implementation for SDK function
            __on_EOS_Platform_Tick = { Handle in
                GTest.current.sdkReceived.append("EOS_Platform_Tick")
                XCTAssertNil(Handle)
            }
            defer { __on_EOS_Platform_Tick = nil }
            
            // Given Actor
            let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: nil)
            
            // When SDK function is called
            object.Tick()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Platform_Tick"])
        }
        
        // Then
        __on_EOS_Platform_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Platform_Tick", "EOS_Platform_Release"])
    }
}
