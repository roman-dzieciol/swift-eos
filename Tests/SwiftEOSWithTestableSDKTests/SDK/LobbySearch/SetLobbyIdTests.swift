import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbySearch_SetLobbyIdTests: XCTestCase {
    public func testEOS_LobbySearch_SetLobbyId_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbySearch_Release = { LobbySearchHandle in
                XCTAssertNil(LobbySearchHandle)
                TestGlobals.current.sdkReceived.append("EOS_LobbySearch_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbySearch_SetLobbyId = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBYSEARCH_SETLOBBYID_API_LATEST)
                XCTAssertNil(Options!.pointee.LobbyId)
                TestGlobals.current.sdkReceived.append("EOS_LobbySearch_SetLobbyId")
                return .zero
            }
            defer { __on_EOS_LobbySearch_SetLobbyId = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbySearch_Actor = SwiftEOS_LobbySearch_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.SetLobbyId(LobbyId: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_LobbySearch_SetLobbyId", "EOS_LobbySearch_Release"])
        }
        
        // Then
        __on_EOS_LobbySearch_Release = nil
    }
}
