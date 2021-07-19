import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionSearch_SetTargetUserIdTests: XCTestCase {
    public func testEOS_SessionSearch_SetTargetUserId_Null() throws {
        TestGlobals.reset()
        __on_EOS_SessionSearch_SetTargetUserId = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.TargetUserId)
            TestGlobals.sdkReceived.append("EOS_SessionSearch_SetTargetUserId")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_SessionSearch_Actor = SwiftEOS_SessionSearch_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetTargetUserId(TargetUserId: nil)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_SessionSearch_SetTargetUserId"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
