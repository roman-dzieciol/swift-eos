import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyModification_SetPermissionLevelTests: XCTestCase {
    public func testEOS_LobbyModification_SetPermissionLevel_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbyModification_Release = { LobbyModificationHandle in
                XCTAssertNil(LobbyModificationHandle)
                GTest.current.sdkReceived.append("EOS_LobbyModification_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbyModification_SetPermissionLevel = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBYMODIFICATION_SETPERMISSIONLEVEL_API_LATEST)
                XCTAssertEqual(Options!.pointee.PermissionLevel, .zero)
                GTest.current.sdkReceived.append("EOS_LobbyModification_SetPermissionLevel")
                return .zero
            }
            defer { __on_EOS_LobbyModification_SetPermissionLevel = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbyModification_Actor = SwiftEOS_LobbyModification_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SetPermissionLevel(PermissionLevel: .zero)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbyModification_SetPermissionLevel"])
        }
        
        // Then
        __on_EOS_LobbyModification_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbyModification_SetPermissionLevel", "EOS_LobbyModification_Release"])
    }
}
