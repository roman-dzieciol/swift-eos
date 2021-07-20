import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyModification_SetInvitesAllowedTests: XCTestCase {
    public func testEOS_LobbyModification_SetInvitesAllowed_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbyModification_Release = { LobbyModificationHandle in
                XCTAssertNil(LobbyModificationHandle)
                TestGlobals.current.sdkReceived.append("EOS_LobbyModification_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbyModification_SetInvitesAllowed = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBYMODIFICATION_SETINVITESALLOWED_API_LATEST)
                XCTAssertEqual(Options!.pointee.bInvitesAllowed, .zero)
                TestGlobals.current.sdkReceived.append("EOS_LobbyModification_SetInvitesAllowed")
                return .zero
            }
            defer { __on_EOS_LobbyModification_SetInvitesAllowed = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbyModification_Actor = SwiftEOS_LobbyModification_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SetInvitesAllowed(bInvitesAllowed: false)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_LobbyModification_SetInvitesAllowed"])
        }
        
        // Then
        __on_EOS_LobbyModification_Release = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_LobbyModification_SetInvitesAllowed", "EOS_LobbyModification_Release"])
    }
}
