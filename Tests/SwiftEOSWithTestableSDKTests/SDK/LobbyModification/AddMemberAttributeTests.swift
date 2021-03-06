import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_LobbyModification_AddMemberAttributeTests: XCTestCase {
    public func testEOS_LobbyModification_AddMemberAttribute_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbyModification_Release = { LobbyModificationHandle in
                GTest.current.sdkReceived.append("EOS_LobbyModification_Release")
                XCTAssertNil(LobbyModificationHandle)
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbyModification_AddMemberAttribute = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_LobbyModification_AddMemberAttribute")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBYMODIFICATION_ADDMEMBERATTRIBUTE_API_LATEST)
                XCTAssertNil(Options!.pointee.Attribute)
                XCTAssertEqual(Options!.pointee.Visibility, .zero)
                return .zero
            }
            defer { __on_EOS_LobbyModification_AddMemberAttribute = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbyModification_Actor = SwiftEOS_LobbyModification_Actor(Handle: nil)
            
            // When SDK function is called
            try object.AddMemberAttribute(
                Attribute: nil,
                Visibility: .zero
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbyModification_AddMemberAttribute"])
        }
        
        // Then
        __on_EOS_LobbyModification_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbyModification_AddMemberAttribute", "EOS_LobbyModification_Release"])
    }
}
