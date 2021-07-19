import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Presence_HasPresenceTests: XCTestCase {
    public func testEOS_Presence_HasPresence_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Presence_HasPresence = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.TargetUserId)
                TestGlobals.current.sdkReceived.append("EOS_Presence_HasPresence")
                return .zero
            }
            defer { __on_EOS_Presence_HasPresence = nil }
            
            // Given Actor
            let object: SwiftEOS_Presence_Actor = SwiftEOS_Presence_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: Bool = try object.HasPresence(
                LocalUserId: nil,
                TargetUserId: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Presence_HasPresence"])
            XCTAssertEqual(result, false)
        }
    }
}
