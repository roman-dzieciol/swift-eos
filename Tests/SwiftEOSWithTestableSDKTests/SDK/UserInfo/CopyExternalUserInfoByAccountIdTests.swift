import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UserInfo_CopyExternalUserInfoByAccountIdTests: XCTestCase {
    public func testEOS_UserInfo_CopyExternalUserInfoByAccountId_Null() throws {
        TestGlobals.reset()
        __on_EOS_UserInfo_CopyExternalUserInfoByAccountId = { Handle, Options, OutExternalUserInfo in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.TargetUserId)
            XCTAssertNil(Options!.pointee.AccountId)
            XCTAssertNil(OutExternalUserInfo)
            TestGlobals.sdkReceived.append("EOS_UserInfo_CopyExternalUserInfoByAccountId")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_UserInfo_Actor = SwiftEOS_UserInfo_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_UserInfo_ExternalUserInfo? = try object.CopyExternalUserInfoByAccountId(
            LocalUserId: nil,
            TargetUserId: nil,
            AccountId: nil
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_UserInfo_CopyExternalUserInfoByAccountId"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
