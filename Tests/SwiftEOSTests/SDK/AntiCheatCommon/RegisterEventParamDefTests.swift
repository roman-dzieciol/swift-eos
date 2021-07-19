import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatCommon_RegisterEventParamDefTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_RegisterEventParamDef() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_RegisterEventParamDef.self) { cstruct in
            XCTAssertNil(cstruct.ParamName)
            XCTAssertEqual(cstruct.ParamType, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatCommon_RegisterEventParamDef(sdkObject: cstruct))
            XCTAssertNil(swiftObject.ParamName)
            XCTAssertEqual(swiftObject.ParamType, .zero) }
    }
}
