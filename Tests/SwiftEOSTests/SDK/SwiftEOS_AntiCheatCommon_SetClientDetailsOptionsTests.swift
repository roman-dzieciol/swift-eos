import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatCommon_SetClientDetailsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_SetClientDetailsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_SetClientDetailsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.ClientHandle)
            XCTAssertEqual(cstruct.ClientFlags, .init(rawValue: .zero)!)
            XCTAssertEqual(cstruct.ClientInputMethod, .init(rawValue: .zero)!)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatCommon_SetClientDetailsOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.ClientHandle)
            XCTAssertEqual(swiftObject.ClientFlags, .init(rawValue: .zero)!)
            XCTAssertEqual(swiftObject.ClientInputMethod, .init(rawValue: .zero)!) }
    }
}
