import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UserInfo_QueryUserInfoByDisplayNameTests: XCTestCase {
    public func testEOS_UserInfo_QueryUserInfoByDisplayName_Null() throws {
        TestGlobals.reset()
        __on_EOS_UserInfo_QueryUserInfoByDisplayName = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.DisplayName)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_UserInfo_QueryUserInfoByDisplayName") }
        let object: SwiftEOS_UserInfo_Actor = SwiftEOS_UserInfo_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.QueryUserInfoByDisplayName(
            LocalUserId: nil,
            DisplayName: nil,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertNil(arg0.TargetUserId)
                XCTAssertNil(arg0.DisplayName)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_UserInfo_QueryUserInfoByDisplayName"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
