import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbySearch_SetLobbyIdTests: XCTestCase {
    public func testEOS_LobbySearch_SetLobbyId_Null() throws {
        TestGlobals.reset()
        __on_EOS_LobbySearch_SetLobbyId = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LobbyId)
            TestGlobals.sdkReceived.append("EOS_LobbySearch_SetLobbyId")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_LobbySearch_Actor = SwiftEOS_LobbySearch_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetLobbyId(LobbyId: nil)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_LobbySearch_SetLobbyId"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
