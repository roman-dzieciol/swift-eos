import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionModification_SetInvitesAllowedTests: XCTestCase {
    public func testEOS_SessionModification_SetInvitesAllowed_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_SessionModification_Release = { SessionModificationHandle in
                XCTAssertNil(SessionModificationHandle)
                TestGlobals.current.sdkReceived.append("EOS_SessionModification_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_SessionModification_SetInvitesAllowed = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONMODIFICATION_SETINVITESALLOWED_API_LATEST)
                XCTAssertEqual(Options!.pointee.bInvitesAllowed, .zero)
                TestGlobals.current.sdkReceived.append("EOS_SessionModification_SetInvitesAllowed")
                return .zero
            }
            defer { __on_EOS_SessionModification_SetInvitesAllowed = nil }
            
            // Given Actor
            let object: SwiftEOS_SessionModification_Actor = SwiftEOS_SessionModification_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SetInvitesAllowed(bInvitesAllowed: false)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_SessionModification_SetInvitesAllowed"])
        }
        
        // Then
        __on_EOS_SessionModification_Release = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_SessionModification_SetInvitesAllowed", "EOS_SessionModification_Release"])
    }
}
