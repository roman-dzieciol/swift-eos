import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatCommon_RegisterEventOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_RegisterEventOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_RegisterEventOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.EventId, .zero)
            XCTAssertNil(cstruct.EventName)
            XCTAssertEqual(cstruct.EventType, .zero)
            XCTAssertEqual(cstruct.ParamDefsCount, .zero)
            XCTAssertNil(cstruct.ParamDefs)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatCommon_RegisterEventOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.EventId, .zero)
            XCTAssertNil(swiftObject.EventName)
            XCTAssertEqual(swiftObject.EventType, .zero)
            XCTAssertNil(swiftObject.ParamDefs) }
    }
}
