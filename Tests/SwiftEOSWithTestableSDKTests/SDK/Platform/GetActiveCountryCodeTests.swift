import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetActiveCountryCodeTests: XCTestCase {
    public func testEOS_Platform_GetActiveCountryCode_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_Platform_Release = { Handle in
                XCTAssertNil(Handle)
                TestGlobals.current.sdkReceived.append("EOS_Platform_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_Platform_GetActiveCountryCode = { Handle, LocalUserId, OutBuffer, InOutBufferLength in
                XCTAssertNil(Handle)
                XCTAssertNil(LocalUserId)
                XCTAssertNotNil(OutBuffer)
                XCTAssertNotNil(InOutBufferLength)
                TestGlobals.current.sdkReceived.append("EOS_Platform_GetActiveCountryCode")
                return .zero
            }
            defer { __on_EOS_Platform_GetActiveCountryCode = nil }
            
            // Given Actor
            let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: nil)
            
            // When SDK function is called
            let result: String? = try object.GetActiveCountryCode(LocalUserId: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Platform_GetActiveCountryCode"])
            XCTAssertNil(result)
        }
        
        // Then
        __on_EOS_Platform_Release = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Platform_GetActiveCountryCode", "EOS_Platform_Release"])
    }
}
