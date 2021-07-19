import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UserInfo_CopyExternalUserInfoByIndexTests: XCTestCase {
    public func testEOS_UserInfo_CopyExternalUserInfoByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_UserInfo_CopyExternalUserInfoByIndex = { Handle, Options, OutExternalUserInfo in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.TargetUserId)
            XCTAssertEqual(Options!.pointee.Index, .zero)
            XCTAssertNil(OutExternalUserInfo)
            TestGlobals.sdkReceived.append("EOS_UserInfo_CopyExternalUserInfoByIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_UserInfo_Actor = SwiftEOS_UserInfo_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_UserInfo_ExternalUserInfo? = try object.CopyExternalUserInfoByIndex(
            LocalUserId: nil,
            TargetUserId: nil,
            Index: .zero
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_UserInfo_CopyExternalUserInfoByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
