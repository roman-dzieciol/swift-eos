import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_CreateLobbySearchTests: XCTestCase {
    public func testEOS_Lobby_CreateLobbySearch_Null() throws {
        TestGlobals.reset()
        __on_EOS_Lobby_CreateLobbySearch = { Handle, Options, OutLobbySearchHandle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.MaxResults, .zero)
            XCTAssertNil(OutLobbySearchHandle)
            TestGlobals.sdkReceived.append("EOS_Lobby_CreateLobbySearch")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_HLobbySearch? = try object.CreateLobbySearch(MaxResults: .zero)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Lobby_CreateLobbySearch"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
