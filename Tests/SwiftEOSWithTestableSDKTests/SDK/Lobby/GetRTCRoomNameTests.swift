import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_GetRTCRoomNameTests: XCTestCase {
    public func testEOS_Lobby_GetRTCRoomName_Null() throws {
        TestGlobals.reset()
        __on_EOS_Lobby_GetRTCRoomName = { Handle, Options, OutBuffer, InOutBufferLength in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LobbyId)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(OutBuffer)
            XCTAssertNil(InOutBufferLength)
            TestGlobals.sdkReceived.append("EOS_Lobby_GetRTCRoomName")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: String? = try object.GetRTCRoomName(
            LobbyId: nil,
            LocalUserId: nil
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Lobby_GetRTCRoomName"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
