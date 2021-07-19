import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyDetails_GetMemberCountTests: XCTestCase {
    public func testEOS_LobbyDetails_GetMemberCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_LobbyDetails_GetMemberCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            TestGlobals.sdkReceived.append("EOS_LobbyDetails_GetMemberCount")
            return .zero }
        let object: SwiftEOS_LobbyDetails_Actor = SwiftEOS_LobbyDetails_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetMemberCount()
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_LobbyDetails_GetMemberCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}