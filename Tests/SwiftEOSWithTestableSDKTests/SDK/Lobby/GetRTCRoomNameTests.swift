import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Lobby_GetRTCRoomNameTests: XCTestCase {
    public func testEOS_Lobby_GetRTCRoomName_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Lobby_GetRTCRoomName = { Handle, Options, OutBuffer, InOutBufferLength in
                GTest.current.sdkReceived.append("EOS_Lobby_GetRTCRoomName")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBY_GETRTCROOMNAME_API_LATEST)
                XCTAssertNil(Options!.pointee.LobbyId)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(OutBuffer)
                XCTAssertNotNil(InOutBufferLength)
                return .zero
            }
            defer { __on_EOS_Lobby_GetRTCRoomName = nil }
            
            // Given Actor
            let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: nil)
            
            // When SDK function is called
            let result: String = try object.GetRTCRoomName(
                LobbyId: nil,
                LocalUserId: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_GetRTCRoomName"])
            XCTAssertEqual(result, "")
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_GetRTCRoomName"])
    }
}
