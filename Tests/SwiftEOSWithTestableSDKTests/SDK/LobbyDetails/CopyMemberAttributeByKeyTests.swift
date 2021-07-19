import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyDetails_CopyMemberAttributeByKeyTests: XCTestCase {
    public func testEOS_LobbyDetails_CopyMemberAttributeByKey_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbyDetails_Release = { LobbyHandle in
                XCTAssertNil(LobbyHandle)
                TestGlobals.current.sdkReceived.append("EOS_LobbyDetails_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbyDetails_CopyMemberAttributeByKey = { Handle, Options, OutAttribute in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNil(Options!.pointee.AttrKey)
                XCTAssertNil(OutAttribute)
                TestGlobals.current.sdkReceived.append("EOS_LobbyDetails_CopyMemberAttributeByKey")
                return .zero
            }
            defer { __on_EOS_LobbyDetails_CopyMemberAttributeByKey = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbyDetails_Actor = SwiftEOS_LobbyDetails_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Lobby_Attribute? = try object.CopyMemberAttributeByKey(
                TargetUserId: nil,
                AttrKey: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_LobbyDetails_CopyMemberAttributeByKey", "EOS_LobbyDetails_Release"])
            XCTAssertNil(result)
        }
        
        // Then
        __on_EOS_LobbyDetails_Release = nil
    }
}
