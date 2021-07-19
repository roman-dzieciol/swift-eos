import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UserInfo_CopyUserInfoTests: XCTestCase {
    public func testEOS_UserInfo_CopyUserInfo_Null() throws {
        TestGlobals.reset()
        __on_EOS_UserInfo_CopyUserInfo = { Handle, Options, OutUserInfo in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.TargetUserId)
            XCTAssertNil(OutUserInfo)
            TestGlobals.sdkReceived.append("EOS_UserInfo_CopyUserInfo")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_UserInfo_Actor = SwiftEOS_UserInfo_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_UserInfo? = try object.CopyUserInfo(
            LocalUserId: nil,
            TargetUserId: nil
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_UserInfo_CopyUserInfo"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
