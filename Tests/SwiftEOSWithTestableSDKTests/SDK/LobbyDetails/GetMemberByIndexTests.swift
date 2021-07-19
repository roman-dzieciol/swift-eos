import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyDetails_GetMemberByIndexTests: XCTestCase {
    public func testEOS_LobbyDetails_GetMemberByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_LobbyDetails_GetMemberByIndex = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.MemberIndex, .zero)
            TestGlobals.sdkReceived.append("EOS_LobbyDetails_GetMemberByIndex")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_LobbyDetails_Actor = SwiftEOS_LobbyDetails_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_ProductUserId = try object.GetMemberByIndex(MemberIndex: .zero)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_LobbyDetails_GetMemberByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
