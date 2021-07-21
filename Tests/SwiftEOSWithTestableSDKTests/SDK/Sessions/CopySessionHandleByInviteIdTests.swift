import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_CopySessionHandleByInviteIdTests: XCTestCase {
    public func testEOS_Sessions_CopySessionHandleByInviteId_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Sessions_CopySessionHandleByInviteId = { Handle, Options, OutSessionHandle in
                GTest.current.sdkReceived.append("EOS_Sessions_CopySessionHandleByInviteId")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONS_COPYSESSIONHANDLEBYINVITEID_API_LATEST)
                XCTAssertNil(Options!.pointee.InviteId)
                XCTAssertNotNil(OutSessionHandle)
                return .zero
            }
            defer { __on_EOS_Sessions_CopySessionHandleByInviteId = nil }
            
            // Given Actor
            let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopySessionHandleByInviteId(InviteId: nil)) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_CopySessionHandleByInviteId"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_CopySessionHandleByInviteId"])
    }
}
