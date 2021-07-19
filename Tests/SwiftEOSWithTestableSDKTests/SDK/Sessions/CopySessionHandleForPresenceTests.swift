import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_CopySessionHandleForPresenceTests: XCTestCase {
    public func testEOS_Sessions_CopySessionHandleForPresence_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Sessions_CopySessionHandleForPresence = { Handle, Options, OutSessionHandle in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONS_COPYSESSIONHANDLEFORPRESENCE_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(OutSessionHandle)
                TestGlobals.current.sdkReceived.append("EOS_Sessions_CopySessionHandleForPresence")
                return .zero
            }
            defer { __on_EOS_Sessions_CopySessionHandleForPresence = nil }
            
            // Given Actor
            let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: EOS_HSessionDetails? = try object.CopySessionHandleForPresence(LocalUserId: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Sessions_CopySessionHandleForPresence"])
            XCTAssertNil(result)
        }
    }
}
