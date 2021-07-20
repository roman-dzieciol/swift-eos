import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyDetails_GetLobbyOwnerTests: XCTestCase {
    public func testEOS_LobbyDetails_GetLobbyOwner_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbyDetails_Release = { LobbyHandle in
                XCTAssertNil(LobbyHandle)
                GTest.current.sdkReceived.append("EOS_LobbyDetails_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbyDetails_GetLobbyOwner = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBYDETAILS_GETLOBBYOWNER_API_LATEST)
                GTest.current.sdkReceived.append("EOS_LobbyDetails_GetLobbyOwner")
                return nil
            }
            defer { __on_EOS_LobbyDetails_GetLobbyOwner = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbyDetails_Actor = SwiftEOS_LobbyDetails_Actor(Handle: nil)
            
            // When SDK function is called
            let result: EOS_ProductUserId? = try object.GetLobbyOwner()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbyDetails_GetLobbyOwner"])
            XCTAssertNil(result)
        }
        
        // Then
        __on_EOS_LobbyDetails_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbyDetails_GetLobbyOwner", "EOS_LobbyDetails_Release"])
    }
}
