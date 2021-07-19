import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Reports_SendPlayerBehaviorReportCompleteCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Reports_SendPlayerBehaviorReportCompleteCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Reports_SendPlayerBehaviorReportCompleteCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Reports_SendPlayerBehaviorReportCompleteCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero) }
    }
}
