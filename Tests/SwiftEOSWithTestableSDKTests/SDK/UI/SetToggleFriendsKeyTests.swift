import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UI_SetToggleFriendsKeyTests: XCTestCase {
    public func testEOS_UI_SetToggleFriendsKey_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_UI_SetToggleFriendsKey = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_UI_SETTOGGLEFRIENDSKEY_API_LATEST)
                XCTAssertEqual(Options!.pointee.KeyCombination, .zero)
                TestGlobals.current.sdkReceived.append("EOS_UI_SetToggleFriendsKey")
                return .zero
            }
            defer { __on_EOS_UI_SetToggleFriendsKey = nil }
            
            // Given Actor
            let object: SwiftEOS_UI_Actor = SwiftEOS_UI_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.SetToggleFriendsKey(KeyCombination: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_UI_SetToggleFriendsKey"])
        }
    }
}
