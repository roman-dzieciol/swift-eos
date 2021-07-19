import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyDetails_GetMemberAttributeCountTests: XCTestCase {
    public func testEOS_LobbyDetails_GetMemberAttributeCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_LobbyDetails_GetMemberAttributeCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.TargetUserId)
            TestGlobals.sdkReceived.append("EOS_LobbyDetails_GetMemberAttributeCount")
            return .zero }
        let object: SwiftEOS_LobbyDetails_Actor = SwiftEOS_LobbyDetails_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetMemberAttributeCount(TargetUserId: nil)
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_LobbyDetails_GetMemberAttributeCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
