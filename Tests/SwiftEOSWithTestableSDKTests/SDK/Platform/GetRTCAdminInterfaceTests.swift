import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetRTCAdminInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetRTCAdminInterface_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_Platform_Release = { Handle in
                XCTAssertNil(Handle)
                GTest.current.sdkReceived.append("EOS_Platform_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_Platform_GetRTCAdminInterface = { Handle in
                XCTAssertNil(Handle)
                GTest.current.sdkReceived.append("EOS_Platform_GetRTCAdminInterface")
                return nil
            }
            defer { __on_EOS_Platform_GetRTCAdminInterface = nil }
            
            // Given Actor
            let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_RTCAdmin_Actor? = object.GetRTCAdminInterface()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Platform_GetRTCAdminInterface"])
            XCTAssertNil(result)
        }
        
        // Then
        __on_EOS_Platform_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Platform_GetRTCAdminInterface", "EOS_Platform_Release"])
    }
}
