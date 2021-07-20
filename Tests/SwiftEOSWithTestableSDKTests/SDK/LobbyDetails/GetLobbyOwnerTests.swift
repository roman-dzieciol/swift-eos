import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyDetails_GetLobbyOwnerTests: XCTestCase {
    public func testEOS_LobbyDetails_GetLobbyOwner_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbyDetails_Release = { LobbyHandle in
                XCTAssertNil(LobbyHandle)
                TestGlobals.current.sdkReceived.append("EOS_LobbyDetails_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbyDetails_GetLobbyOwner = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBYDETAILS_GETLOBBYOWNER_API_LATEST)
                TestGlobals.current.sdkReceived.append("EOS_LobbyDetails_GetLobbyOwner")
                return nil
            }
            defer { __on_EOS_LobbyDetails_GetLobbyOwner = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbyDetails_Actor = SwiftEOS_LobbyDetails_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: EOS_ProductUserId? = try object.GetLobbyOwner()
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_LobbyDetails_GetLobbyOwner", "EOS_LobbyDetails_Release"])
            XCTAssertNil(result)
        }
        
        // Then
        __on_EOS_LobbyDetails_Release = nil
    }
}
