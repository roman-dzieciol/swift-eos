import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatCommon_RegisterEventOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_RegisterEventOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_RegisterEventOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.EventId, .zero)
            XCTAssertNil(cstruct.EventName)
            XCTAssertEqual(cstruct.EventType, .init(rawValue: .zero)!)
            XCTAssertEqual(cstruct.ParamDefsCount, .zero)
            XCTAssertNil(cstruct.ParamDefs)
            let swiftObject = try SwiftEOS_AntiCheatCommon_RegisterEventOptions(sdkObject: cstruct) }
    }
}
