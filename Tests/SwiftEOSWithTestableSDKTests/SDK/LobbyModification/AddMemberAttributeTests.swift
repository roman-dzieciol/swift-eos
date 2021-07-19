import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyModification_AddMemberAttributeTests: XCTestCase {
    public func testEOS_LobbyModification_AddMemberAttribute_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbyModification_Release = { LobbyModificationHandle in
                XCTAssertNil(LobbyModificationHandle)
                TestGlobals.current.sdkReceived.append("EOS_LobbyModification_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbyModification_AddMemberAttribute = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBYMODIFICATION_ADDMEMBERATTRIBUTE_API_LATEST)
                XCTAssertNil(Options!.pointee.Attribute)
                XCTAssertEqual(Options!.pointee.Visibility, .zero)
                TestGlobals.current.sdkReceived.append("EOS_LobbyModification_AddMemberAttribute")
                return .zero
            }
            defer { __on_EOS_LobbyModification_AddMemberAttribute = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbyModification_Actor = SwiftEOS_LobbyModification_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.AddMemberAttribute(
                Attribute: nil,
                Visibility: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_LobbyModification_AddMemberAttribute", "EOS_LobbyModification_Release"])
        }
        
        // Then
        __on_EOS_LobbyModification_Release = nil
    }
}
