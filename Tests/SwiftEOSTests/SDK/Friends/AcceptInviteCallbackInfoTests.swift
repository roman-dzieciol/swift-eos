import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Friends_AcceptInviteCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Friends_AcceptInviteCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Friends_AcceptInviteCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Friends_AcceptInviteCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}
