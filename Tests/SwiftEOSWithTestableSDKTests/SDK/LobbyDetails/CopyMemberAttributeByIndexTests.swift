import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyDetails_CopyMemberAttributeByIndexTests: XCTestCase {
    public func testEOS_LobbyDetails_CopyMemberAttributeByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbyDetails_Release = { LobbyHandle in
                XCTAssertNil(LobbyHandle)
                GTest.current.sdkReceived.append("EOS_LobbyDetails_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbyDetails_CopyMemberAttributeByIndex = { Handle, Options, OutAttribute in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBYDETAILS_COPYMEMBERATTRIBUTEBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertEqual(Options!.pointee.AttrIndex, .zero)
                XCTAssertNotNil(OutAttribute)
                GTest.current.sdkReceived.append("EOS_LobbyDetails_CopyMemberAttributeByIndex")
                return .zero
            }
            defer { __on_EOS_LobbyDetails_CopyMemberAttributeByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbyDetails_Actor = SwiftEOS_LobbyDetails_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Lobby_Attribute? = try object.CopyMemberAttributeByIndex(
                TargetUserId: nil,
                AttrIndex: .zero
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbyDetails_CopyMemberAttributeByIndex"])
            XCTAssertNil(result)
        }
        
        // Then
        __on_EOS_LobbyDetails_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbyDetails_CopyMemberAttributeByIndex", "EOS_LobbyDetails_Release"])
    }
}
