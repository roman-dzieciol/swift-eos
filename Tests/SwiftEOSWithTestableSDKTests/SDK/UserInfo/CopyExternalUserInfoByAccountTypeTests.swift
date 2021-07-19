import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UserInfo_CopyExternalUserInfoByAccountTypeTests: XCTestCase {
    public func testEOS_UserInfo_CopyExternalUserInfoByAccountType_Null() throws {
        TestGlobals.reset()
        __on_EOS_UserInfo_CopyExternalUserInfoByAccountType = { Handle, Options, OutExternalUserInfo in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.TargetUserId)
            XCTAssertEqual(Options!.pointee.AccountType, .init(rawValue: .zero)!)
            XCTAssertNil(OutExternalUserInfo)
            TestGlobals.sdkReceived.append("EOS_UserInfo_CopyExternalUserInfoByAccountType")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_UserInfo_Actor = SwiftEOS_UserInfo_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_UserInfo_ExternalUserInfo? = try object.CopyExternalUserInfoByAccountType(
            LocalUserId: nil,
            TargetUserId: nil,
            AccountType: .init(rawValue: .zero)!
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_UserInfo_CopyExternalUserInfoByAccountType"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
