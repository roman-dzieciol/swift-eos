import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Sessions_CopySessionHandleForPresenceTests: XCTestCase {
    public func testEOS_Sessions_CopySessionHandleForPresence_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Sessions_CopySessionHandleForPresence = { Handle, Options, OutSessionHandle in
                GTest.current.sdkReceived.append("EOS_Sessions_CopySessionHandleForPresence")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONS_COPYSESSIONHANDLEFORPRESENCE_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNotNil(OutSessionHandle)
                return .zero
            }
            defer { __on_EOS_Sessions_CopySessionHandleForPresence = nil }
            
            // Given Actor
            let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopySessionHandleForPresence(LocalUserId: nil)) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_CopySessionHandleForPresence"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_CopySessionHandleForPresence"])
    }
}
