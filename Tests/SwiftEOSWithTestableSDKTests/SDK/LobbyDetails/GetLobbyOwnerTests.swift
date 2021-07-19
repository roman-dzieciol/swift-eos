import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyDetails_GetLobbyOwnerTests: XCTestCase {
    public func testEOS_LobbyDetails_GetLobbyOwner_Null() throws {
        TestGlobals.reset()
        __on_EOS_LobbyDetails_GetLobbyOwner = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            TestGlobals.sdkReceived.append("EOS_LobbyDetails_GetLobbyOwner")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_LobbyDetails_Actor = SwiftEOS_LobbyDetails_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_ProductUserId = try object.GetLobbyOwner()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_LobbyDetails_GetLobbyOwner"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
