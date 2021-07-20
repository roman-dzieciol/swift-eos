import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetUserInfoInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetUserInfoInterface_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_Platform_Release = { Handle in
                XCTAssertNil(Handle)
                TestGlobals.current.sdkReceived.append("EOS_Platform_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_Platform_GetUserInfoInterface = { Handle in
                XCTAssertNil(Handle)
                TestGlobals.current.sdkReceived.append("EOS_Platform_GetUserInfoInterface")
                return nil
            }
            defer { __on_EOS_Platform_GetUserInfoInterface = nil }
            
            // Given Actor
            let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_UserInfo_Actor? = object.GetUserInfoInterface()
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Platform_GetUserInfoInterface"])
            XCTAssertNil(result)
        }
        
        // Then
        __on_EOS_Platform_Release = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Platform_GetUserInfoInterface", "EOS_Platform_Release"])
    }
}
