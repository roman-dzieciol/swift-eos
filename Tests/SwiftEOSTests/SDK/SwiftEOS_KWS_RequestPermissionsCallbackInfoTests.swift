import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_KWS_RequestPermissionsCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_KWS_RequestPermissionsCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_KWS_RequestPermissionsCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_KWS_RequestPermissionsCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
