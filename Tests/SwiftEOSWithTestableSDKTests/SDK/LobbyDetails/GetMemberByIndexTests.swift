import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyDetails_GetMemberByIndexTests: XCTestCase {
    public func testEOS_LobbyDetails_GetMemberByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbyDetails_Release = { LobbyHandle in
                XCTAssertNil(LobbyHandle)
                TestGlobals.current.sdkReceived.append("EOS_LobbyDetails_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbyDetails_GetMemberByIndex = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBYDETAILS_GETMEMBERBYINDEX_API_LATEST)
                XCTAssertEqual(Options!.pointee.MemberIndex, .zero)
                TestGlobals.current.sdkReceived.append("EOS_LobbyDetails_GetMemberByIndex")
                return nil
            }
            defer { __on_EOS_LobbyDetails_GetMemberByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbyDetails_Actor = SwiftEOS_LobbyDetails_Actor(Handle: nil)
            
            // When SDK function is called
            let result: EOS_ProductUserId? = try object.GetMemberByIndex(MemberIndex: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_LobbyDetails_GetMemberByIndex"])
            XCTAssertNil(result)
        }
        
        // Then
        __on_EOS_LobbyDetails_Release = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_LobbyDetails_GetMemberByIndex", "EOS_LobbyDetails_Release"])
    }
}
