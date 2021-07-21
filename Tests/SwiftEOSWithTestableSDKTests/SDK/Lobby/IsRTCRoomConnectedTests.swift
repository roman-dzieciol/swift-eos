import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_IsRTCRoomConnectedTests: XCTestCase {
    public func testEOS_Lobby_IsRTCRoomConnected_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Lobby_IsRTCRoomConnected = { Handle, Options, bOutIsConnected in
                GTest.current.sdkReceived.append("EOS_Lobby_IsRTCRoomConnected")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBY_ISRTCROOMCONNECTED_API_LATEST)
                XCTAssertNil(Options!.pointee.LobbyId)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNotNil(bOutIsConnected)
                return .zero
            }
            defer { __on_EOS_Lobby_IsRTCRoomConnected = nil }
            
            // Given Actor
            let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Bool = try object.IsRTCRoomConnected(
                LobbyId: nil,
                LocalUserId: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_IsRTCRoomConnected"])
            XCTAssertEqual(result, false)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_IsRTCRoomConnected"])
    }
}
