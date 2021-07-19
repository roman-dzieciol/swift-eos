import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Friends_GetStatusTests: XCTestCase {
    public func testEOS_Friends_GetStatus_Null() throws {
        TestGlobals.reset()
        __on_EOS_Friends_GetStatus = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.TargetUserId)
            TestGlobals.sdkReceived.append("EOS_Friends_GetStatus")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Friends_Actor = SwiftEOS_Friends_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_EFriendsStatus = try object.GetStatus(
            LocalUserId: nil,
            TargetUserId: nil
        )
        XCTAssertEqual(result, .init(rawValue: .zero)!)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Friends_GetStatus"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
