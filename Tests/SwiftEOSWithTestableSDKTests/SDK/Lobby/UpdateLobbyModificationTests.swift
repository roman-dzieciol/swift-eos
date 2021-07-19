import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_UpdateLobbyModificationTests: XCTestCase {
    public func testEOS_Lobby_UpdateLobbyModification_Null() throws {
        TestGlobals.reset()
        __on_EOS_Lobby_UpdateLobbyModification = { Handle, Options, OutLobbyModificationHandle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.LobbyId)
            XCTAssertNil(OutLobbyModificationHandle)
            TestGlobals.sdkReceived.append("EOS_Lobby_UpdateLobbyModification")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_HLobbyModification? = try object.UpdateLobbyModification(
            LocalUserId: nil,
            LobbyId: nil
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Lobby_UpdateLobbyModification"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
