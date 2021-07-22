import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_LobbyDetails_GetMemberAttributeCountTests: XCTestCase {
    public func testEOS_LobbyDetails_GetMemberAttributeCount_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbyDetails_Release = { LobbyHandle in
                GTest.current.sdkReceived.append("EOS_LobbyDetails_Release")
                XCTAssertNil(LobbyHandle)
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbyDetails_GetMemberAttributeCount = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_LobbyDetails_GetMemberAttributeCount")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBYDETAILS_GETMEMBERATTRIBUTECOUNT_API_LATEST)
                XCTAssertNil(Options!.pointee.TargetUserId)
                return .zero
            }
            defer { __on_EOS_LobbyDetails_GetMemberAttributeCount = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbyDetails_Actor = SwiftEOS_LobbyDetails_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetMemberAttributeCount(TargetUserId: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbyDetails_GetMemberAttributeCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        __on_EOS_LobbyDetails_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbyDetails_GetMemberAttributeCount", "EOS_LobbyDetails_Release"])
    }
}
