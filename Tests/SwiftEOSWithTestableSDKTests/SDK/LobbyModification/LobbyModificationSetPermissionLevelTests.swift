import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyModification_SetPermissionLevelTests: XCTestCase {
    public func testEOS_LobbyModification_SetPermissionLevel_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbyModification_Release = { LobbyModificationHandle in
                XCTAssertNil(LobbyModificationHandle)
                TestGlobals.current.sdkReceived.append("EOS_LobbyModification_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbyModification_SetPermissionLevel = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBYMODIFICATION_SETPERMISSIONLEVEL_API_LATEST)
                XCTAssertEqual(Options!.pointee.PermissionLevel, .zero)
                TestGlobals.current.sdkReceived.append("EOS_LobbyModification_SetPermissionLevel")
                return .zero
            }
            defer { __on_EOS_LobbyModification_SetPermissionLevel = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbyModification_Actor = SwiftEOS_LobbyModification_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.SetPermissionLevel(PermissionLevel: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_LobbyModification_SetPermissionLevel", "EOS_LobbyModification_Release"])
        }
        
        // Then
        __on_EOS_LobbyModification_Release = nil
    }
}
