import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Stats_OnQueryStatsCompleteCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Stats_OnQueryStatsCompleteCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Stats_OnQueryStatsCompleteCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try SwiftEOS_Stats_OnQueryStatsCompleteCallbackInfo(sdkObject: cstruct) }
    }
}
