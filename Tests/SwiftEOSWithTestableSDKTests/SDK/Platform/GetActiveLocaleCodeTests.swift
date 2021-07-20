import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetActiveLocaleCodeTests: XCTestCase {
    public func testEOS_Platform_GetActiveLocaleCode_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_Platform_Release = { Handle in
                XCTAssertNil(Handle)
                TestGlobals.current.sdkReceived.append("EOS_Platform_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_Platform_GetActiveLocaleCode = { Handle, LocalUserId, OutBuffer, InOutBufferLength in
                XCTAssertNil(Handle)
                XCTAssertNil(LocalUserId)
                XCTAssertNotNil(OutBuffer)
                XCTAssertNotNil(InOutBufferLength)
                TestGlobals.current.sdkReceived.append("EOS_Platform_GetActiveLocaleCode")
                return .zero
            }
            defer { __on_EOS_Platform_GetActiveLocaleCode = nil }
            
            // Given Actor
            let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: nil)
            
            // When SDK function is called
            let result: String? = try object.GetActiveLocaleCode(LocalUserId: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Platform_GetActiveLocaleCode"])
            XCTAssertNil(result)
        }
        
        // Then
        __on_EOS_Platform_Release = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Platform_GetActiveLocaleCode", "EOS_Platform_Release"])
    }
}
