import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_CopyLobbyDetailsHandleByUiEventIdTests: XCTestCase {
    public func testEOS_Lobby_CopyLobbyDetailsHandleByUiEventId_Null() throws {
        TestGlobals.reset()
        __on_EOS_Lobby_CopyLobbyDetailsHandleByUiEventId = { Handle, Options, OutLobbyDetailsHandle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.UiEventId, .zero)
            XCTAssertNil(OutLobbyDetailsHandle)
            TestGlobals.sdkReceived.append("EOS_Lobby_CopyLobbyDetailsHandleByUiEventId")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_HLobbyDetails? = try object.CopyLobbyDetailsHandleByUiEventId(UiEventId: .zero)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Lobby_CopyLobbyDetailsHandleByUiEventId"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
