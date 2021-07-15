import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Auth_LogoutCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Auth_LogoutCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Auth_LogoutCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try SwiftEOS_Auth_LogoutCallbackInfo(sdkObject: cstruct) }
    }
}
