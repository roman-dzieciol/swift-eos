import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_GetInviteCountTests: XCTestCase {
    public func testEOS_Lobby_GetInviteCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_Lobby_GetInviteCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            TestGlobals.sdkReceived.append("EOS_Lobby_GetInviteCount")
            return .zero }
        let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetInviteCount(LocalUserId: nil)
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Lobby_GetInviteCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
