import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UserInfo_GetExternalUserInfoCountTests: XCTestCase {
    public func testEOS_UserInfo_GetExternalUserInfoCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_UserInfo_GetExternalUserInfoCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.TargetUserId)
            TestGlobals.sdkReceived.append("EOS_UserInfo_GetExternalUserInfoCount")
            return .zero }
        let object: SwiftEOS_UserInfo_Actor = SwiftEOS_UserInfo_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetExternalUserInfoCount(
            LocalUserId: nil,
            TargetUserId: nil
        )
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_UserInfo_GetExternalUserInfoCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
