import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UserInfo_QueryUserInfoByExternalAccountTests: XCTestCase {
    public func testEOS_UserInfo_QueryUserInfoByExternalAccount_Null() throws {
        TestGlobals.reset()
        __on_EOS_UserInfo_QueryUserInfoByExternalAccount = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.ExternalAccountId)
            XCTAssertEqual(Options!.pointee.AccountType, .init(rawValue: .zero)!)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_UserInfo_QueryUserInfoByExternalAccount") }
        let object: SwiftEOS_UserInfo_Actor = SwiftEOS_UserInfo_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.QueryUserInfoByExternalAccount(
            LocalUserId: nil,
            ExternalAccountId: nil,
            AccountType: .init(rawValue: .zero)!,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertNil(arg0.ExternalAccountId)
                XCTAssertEqual(arg0.AccountType, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.TargetUserId)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_UserInfo_QueryUserInfoByExternalAccount"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
