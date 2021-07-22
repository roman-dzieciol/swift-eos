import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_LobbyModification_SetMaxMembersTests: XCTestCase {
    public func testEOS_LobbyModification_SetMaxMembers_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbyModification_Release = { LobbyModificationHandle in
                GTest.current.sdkReceived.append("EOS_LobbyModification_Release")
                XCTAssertNil(LobbyModificationHandle)
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbyModification_SetMaxMembers = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_LobbyModification_SetMaxMembers")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBYMODIFICATION_SETMAXMEMBERS_API_LATEST)
                XCTAssertEqual(Options!.pointee.MaxMembers, .zero)
                return .zero
            }
            defer { __on_EOS_LobbyModification_SetMaxMembers = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbyModification_Actor = SwiftEOS_LobbyModification_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SetMaxMembers(MaxMembers: .zero)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbyModification_SetMaxMembers"])
        }
        
        // Then
        __on_EOS_LobbyModification_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbyModification_SetMaxMembers", "EOS_LobbyModification_Release"])
    }
}
