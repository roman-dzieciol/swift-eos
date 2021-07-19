import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_JoinLobbyTests: XCTestCase {
    public func testEOS_Lobby_JoinLobby_Null() throws {
        TestGlobals.reset()
        __on_EOS_Lobby_JoinLobby = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LobbyDetailsHandle)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertEqual(Options!.pointee.bPresenceEnabled, .zero)
            XCTAssertNil(Options!.pointee.LocalRTCOptions)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_Lobby_JoinLobby") }
        let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.JoinLobby(
            LobbyDetailsHandle: nil,
            LocalUserId: nil,
            bPresenceEnabled: false,
            LocalRTCOptions: nil,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LobbyId)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Lobby_JoinLobby"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
