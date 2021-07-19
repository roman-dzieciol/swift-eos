import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_UpdateLobbyTests: XCTestCase {
    public func testEOS_Lobby_UpdateLobby_Null() throws {
        TestGlobals.reset()
        __on_EOS_Lobby_UpdateLobby = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LobbyModificationHandle)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_Lobby_UpdateLobby") }
        let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.UpdateLobby(
            LobbyModificationHandle: nil,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LobbyId)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Lobby_UpdateLobby"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
