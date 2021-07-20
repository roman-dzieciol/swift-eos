import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_GetLoginStatusTests: XCTestCase {
    public func testEOS_Connect_GetLoginStatus_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Connect_GetLoginStatus = { Handle, LocalUserId in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertNil(LocalUserId)
                TestGlobals.current.sdkReceived.append("EOS_Connect_GetLoginStatus")
                return .zero
            }
            defer { __on_EOS_Connect_GetLoginStatus = nil }
            
            // Given Actor
            let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: EOS_ELoginStatus = object.GetLoginStatus(LocalUserId: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Connect_GetLoginStatus"])
            XCTAssertEqual(result, .zero)
        }
    }
}
