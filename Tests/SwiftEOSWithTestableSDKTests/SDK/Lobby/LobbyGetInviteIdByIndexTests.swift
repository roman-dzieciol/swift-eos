import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_GetInviteIdByIndexTests: XCTestCase {
    public func testEOS_Lobby_GetInviteIdByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_Lobby_GetInviteIdByIndex = { Handle, Options, OutBuffer, InOutBufferLength in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertEqual(Options!.pointee.Index, .zero)
            XCTAssertNil(OutBuffer)
            XCTAssertNil(InOutBufferLength)
            TestGlobals.sdkReceived.append("EOS_Lobby_GetInviteIdByIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: String? = try object.GetInviteIdByIndex(
            LocalUserId: nil,
            Index: .zero
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Lobby_GetInviteIdByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
