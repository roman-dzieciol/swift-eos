import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_LobbyModification_SetInvitesAllowedTests: XCTestCase {
    public func testEOS_LobbyModification_SetInvitesAllowed_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbyModification_Release = { LobbyModificationHandle in
                GTest.current.sdkReceived.append("EOS_LobbyModification_Release")
                XCTAssertNil(LobbyModificationHandle)
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbyModification_SetInvitesAllowed = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_LobbyModification_SetInvitesAllowed")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBYMODIFICATION_SETINVITESALLOWED_API_LATEST)
                XCTAssertEqual(Options!.pointee.bInvitesAllowed, .zero)
                return .zero
            }
            defer { __on_EOS_LobbyModification_SetInvitesAllowed = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbyModification_Actor = SwiftEOS_LobbyModification_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SetInvitesAllowed(bInvitesAllowed: false)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbyModification_SetInvitesAllowed"])
        }
        
        // Then
        __on_EOS_LobbyModification_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbyModification_SetInvitesAllowed", "EOS_LobbyModification_Release"])
    }
}
