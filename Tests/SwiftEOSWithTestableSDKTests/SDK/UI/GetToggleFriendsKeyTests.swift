import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UI_GetToggleFriendsKeyTests: XCTestCase {
    public func testEOS_UI_GetToggleFriendsKey_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_UI_GetToggleFriendsKey = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                TestGlobals.current.sdkReceived.append("EOS_UI_GetToggleFriendsKey")
                return .zero
            }
            defer { __on_EOS_UI_GetToggleFriendsKey = nil }
            
            // Given Actor
            let object: SwiftEOS_UI_Actor = SwiftEOS_UI_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: EOS_UI_EKeyCombination = try object.GetToggleFriendsKey()
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_UI_GetToggleFriendsKey"])
            XCTAssertEqual(result, .zero)
        }
    }
}
