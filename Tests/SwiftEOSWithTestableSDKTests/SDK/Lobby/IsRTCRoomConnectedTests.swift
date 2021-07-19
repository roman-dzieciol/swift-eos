import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_IsRTCRoomConnectedTests: XCTestCase {
    public func testEOS_Lobby_IsRTCRoomConnected_Null() throws {
        TestGlobals.reset()
        __on_EOS_Lobby_IsRTCRoomConnected = { Handle, Options, bOutIsConnected in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LobbyId)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(bOutIsConnected)
            TestGlobals.sdkReceived.append("EOS_Lobby_IsRTCRoomConnected")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Bool? = try object.IsRTCRoomConnected(
            LobbyId: nil,
            LocalUserId: nil
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Lobby_IsRTCRoomConnected"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
