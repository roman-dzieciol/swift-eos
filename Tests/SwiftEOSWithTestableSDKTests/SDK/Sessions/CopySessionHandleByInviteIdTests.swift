import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_CopySessionHandleByInviteIdTests: XCTestCase {
    public func testEOS_Sessions_CopySessionHandleByInviteId_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Sessions_CopySessionHandleByInviteId = { Handle, Options, OutSessionHandle in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONS_COPYSESSIONHANDLEBYINVITEID_API_LATEST)
                XCTAssertNil(Options!.pointee.InviteId)
                XCTAssertNotNil(OutSessionHandle)
                GTest.current.sdkReceived.append("EOS_Sessions_CopySessionHandleByInviteId")
                return .zero
            }
            defer { __on_EOS_Sessions_CopySessionHandleByInviteId = nil }
            
            // Given Actor
            let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: nil)
            
            // When SDK function is called
            let result: EOS_HSessionDetails = try object.CopySessionHandleByInviteId(InviteId: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_CopySessionHandleByInviteId"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_CopySessionHandleByInviteId"])
    }
}
