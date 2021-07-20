import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyDetails_CopyMemberAttributeByKeyTests: XCTestCase {
    public func testEOS_LobbyDetails_CopyMemberAttributeByKey_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbyDetails_Release = { LobbyHandle in
                XCTAssertNil(LobbyHandle)
                GTest.current.sdkReceived.append("EOS_LobbyDetails_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbyDetails_CopyMemberAttributeByKey = { Handle, Options, OutAttribute in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBYDETAILS_COPYMEMBERATTRIBUTEBYKEY_API_LATEST)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNil(Options!.pointee.AttrKey)
                XCTAssertNotNil(OutAttribute)
                GTest.current.sdkReceived.append("EOS_LobbyDetails_CopyMemberAttributeByKey")
                return .zero
            }
            defer { __on_EOS_LobbyDetails_CopyMemberAttributeByKey = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbyDetails_Actor = SwiftEOS_LobbyDetails_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyMemberAttributeByKey(
                    TargetUserId: nil,
                    AttrKey: nil
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbyDetails_CopyMemberAttributeByKey"])
        }
        
        // Then
        __on_EOS_LobbyDetails_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbyDetails_CopyMemberAttributeByKey", "EOS_LobbyDetails_Release"])
    }
}
