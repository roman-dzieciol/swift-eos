import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_CopyLobbyDetailsHandleByInviteIdTests: XCTestCase {
    public func testEOS_Lobby_CopyLobbyDetailsHandleByInviteId_Null() throws {
        TestGlobals.reset()
        __on_EOS_Lobby_CopyLobbyDetailsHandleByInviteId = { Handle, Options, OutLobbyDetailsHandle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.InviteId)
            XCTAssertNil(OutLobbyDetailsHandle)
            TestGlobals.sdkReceived.append("EOS_Lobby_CopyLobbyDetailsHandleByInviteId")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_HLobbyDetails? = try object.CopyLobbyDetailsHandleByInviteId(InviteId: nil)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Lobby_CopyLobbyDetailsHandleByInviteId"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
