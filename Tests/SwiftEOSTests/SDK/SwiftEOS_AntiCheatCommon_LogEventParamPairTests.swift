import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatCommon_LogEventParamPairTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_LogEventParamPair() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_LogEventParamPair.self) { cstruct in
            XCTAssertEqual(cstruct.ParamValueType, .init(rawValue: .zero)!)
            XCTFail("TODO: cstruct.ParamValue")
            let swiftObject = try SwiftEOS_AntiCheatCommon_LogEventParamPair(sdkObject: cstruct) }
    }
}
