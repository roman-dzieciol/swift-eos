import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_CreateLobbyTests: XCTestCase {
    public func testEOS_Lobby_CreateLobby_Null() throws {
        TestGlobals.reset()
        __on_EOS_Lobby_CreateLobby = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertEqual(Options!.pointee.MaxLobbyMembers, .zero)
            XCTAssertEqual(Options!.pointee.PermissionLevel, .init(rawValue: .zero)!)
            XCTAssertEqual(Options!.pointee.bPresenceEnabled, .zero)
            XCTAssertEqual(Options!.pointee.bAllowInvites, .zero)
            XCTAssertNil(Options!.pointee.BucketId)
            XCTAssertEqual(Options!.pointee.bDisableHostMigration, .zero)
            XCTAssertEqual(Options!.pointee.bEnableRTCRoom, .zero)
            XCTAssertNil(Options!.pointee.LocalRTCOptions)
            XCTAssertNil(Options!.pointee.LobbyId)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_Lobby_CreateLobby") }
        let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.CreateLobby(
            LocalUserId: nil,
            MaxLobbyMembers: .zero,
            PermissionLevel: .init(rawValue: .zero)!,
            bPresenceEnabled: false,
            bAllowInvites: false,
            BucketId: nil,
            bDisableHostMigration: false,
            bEnableRTCRoom: false,
            LocalRTCOptions: nil,
            LobbyId: nil,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LobbyId)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Lobby_CreateLobby"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
