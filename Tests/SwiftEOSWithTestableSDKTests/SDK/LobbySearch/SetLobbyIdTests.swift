import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_LobbySearch_SetLobbyIdTests: XCTestCase {
    public func testEOS_LobbySearch_SetLobbyId_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbySearch_Release = { LobbySearchHandle in
                GTest.current.sdkReceived.append("EOS_LobbySearch_Release")
                XCTAssertNil(LobbySearchHandle)
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbySearch_SetLobbyId = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_LobbySearch_SetLobbyId")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBYSEARCH_SETLOBBYID_API_LATEST)
                XCTAssertNil(Options!.pointee.LobbyId)
                return .zero
            }
            defer { __on_EOS_LobbySearch_SetLobbyId = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbySearch_Actor = SwiftEOS_LobbySearch_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SetLobbyId(LobbyId: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbySearch_SetLobbyId"])
        }
        
        // Then
        __on_EOS_LobbySearch_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbySearch_SetLobbyId", "EOS_LobbySearch_Release"])
    }
}
