import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_AntiCheatCommon_LogEventOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_LogEventOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_LogEventOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.ClientHandle)
            XCTAssertEqual(cstruct.EventId, .zero)
            XCTAssertEqual(cstruct.ParamsCount, .zero)
            XCTAssertNil(cstruct.Params)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatCommon_LogEventOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.ClientHandle)
            XCTAssertEqual(swiftObject.EventId, .zero)
            XCTAssertNil(swiftObject.Params) }
    }
}
