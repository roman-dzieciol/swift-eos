import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyDetails_CopyMemberAttributeByIndexTests: XCTestCase {
    public func testEOS_LobbyDetails_CopyMemberAttributeByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_LobbyDetails_CopyMemberAttributeByIndex = { Handle, Options, OutAttribute in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.TargetUserId)
            XCTAssertEqual(Options!.pointee.AttrIndex, .zero)
            XCTAssertNil(OutAttribute)
            TestGlobals.sdkReceived.append("EOS_LobbyDetails_CopyMemberAttributeByIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_LobbyDetails_Actor = SwiftEOS_LobbyDetails_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Lobby_Attribute? = try object.CopyMemberAttributeByIndex(
            TargetUserId: nil,
            AttrIndex: .zero
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_LobbyDetails_CopyMemberAttributeByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
