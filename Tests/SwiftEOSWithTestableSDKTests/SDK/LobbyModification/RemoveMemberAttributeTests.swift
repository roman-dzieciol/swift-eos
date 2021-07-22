import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_LobbyModification_RemoveMemberAttributeTests: XCTestCase {
    public func testEOS_LobbyModification_RemoveMemberAttribute_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbyModification_Release = { LobbyModificationHandle in
                GTest.current.sdkReceived.append("EOS_LobbyModification_Release")
                XCTAssertNil(LobbyModificationHandle)
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbyModification_RemoveMemberAttribute = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_LobbyModification_RemoveMemberAttribute")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBYMODIFICATION_REMOVEMEMBERATTRIBUTE_API_LATEST)
                XCTAssertNil(Options!.pointee.Key)
                return .zero
            }
            defer { __on_EOS_LobbyModification_RemoveMemberAttribute = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbyModification_Actor = SwiftEOS_LobbyModification_Actor(Handle: nil)
            
            // When SDK function is called
            try object.RemoveMemberAttribute(Key: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbyModification_RemoveMemberAttribute"])
        }
        
        // Then
        __on_EOS_LobbyModification_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbyModification_RemoveMemberAttribute", "EOS_LobbyModification_Release"])
    }
}
