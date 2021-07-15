import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Friends_SendInviteCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Friends_SendInviteCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Friends_SendInviteCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try SwiftEOS_Friends_SendInviteCallbackInfo(sdkObject: cstruct) }
    }
}
