import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbySearch_SetTargetUserIdTests: XCTestCase {
    public func testEOS_LobbySearch_SetTargetUserId_Null() throws {
        TestGlobals.reset()
        __on_EOS_LobbySearch_SetTargetUserId = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.TargetUserId)
            TestGlobals.sdkReceived.append("EOS_LobbySearch_SetTargetUserId")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_LobbySearch_Actor = SwiftEOS_LobbySearch_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetTargetUserId(TargetUserId: nil)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_LobbySearch_SetTargetUserId"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
