import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_GetRTCRoomNameTests: XCTestCase {
    public func testEOS_Lobby_GetRTCRoomName_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Lobby_GetRTCRoomName = { Handle, Options, OutBuffer, InOutBufferLength in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LobbyId)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(OutBuffer)
                XCTAssertNil(InOutBufferLength)
                TestGlobals.current.sdkReceived.append("EOS_Lobby_GetRTCRoomName")
                return .zero
            }
            defer { __on_EOS_Lobby_GetRTCRoomName = nil }
            
            // Given Actor
            let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: String? = try object.GetRTCRoomName(
                LobbyId: nil,
                LocalUserId: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Lobby_GetRTCRoomName"])
            XCTAssertNil(result)
        }
    }
}
