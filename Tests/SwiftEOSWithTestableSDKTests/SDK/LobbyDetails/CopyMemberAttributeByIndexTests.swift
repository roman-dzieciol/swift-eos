import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_LobbyDetails_CopyMemberAttributeByIndexTests: XCTestCase {
    public func testEOS_LobbyDetails_CopyMemberAttributeByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbyDetails_Release = { LobbyHandle in
                GTest.current.sdkReceived.append("EOS_LobbyDetails_Release")
                XCTAssertNil(LobbyHandle)
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbyDetails_CopyMemberAttributeByIndex = { Handle, Options, OutAttribute in
                GTest.current.sdkReceived.append("EOS_LobbyDetails_CopyMemberAttributeByIndex")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBYDETAILS_COPYMEMBERATTRIBUTEBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertEqual(Options!.pointee.AttrIndex, .zero)
                XCTAssertNotNil(OutAttribute)
                return .zero
            }
            defer { __on_EOS_LobbyDetails_CopyMemberAttributeByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbyDetails_Actor = SwiftEOS_LobbyDetails_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyMemberAttributeByIndex(
                    TargetUserId: nil,
                    AttrIndex: .zero
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbyDetails_CopyMemberAttributeByIndex"])
        }
        
        // Then
        __on_EOS_LobbyDetails_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbyDetails_CopyMemberAttributeByIndex", "EOS_LobbyDetails_Release"])
    }
}
