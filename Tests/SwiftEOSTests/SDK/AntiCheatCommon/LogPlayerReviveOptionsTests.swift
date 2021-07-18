import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatCommon_LogPlayerReviveOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_LogPlayerReviveOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_LogPlayerReviveOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.RevivedPlayerHandle)
            XCTAssertNil(cstruct.ReviverPlayerHandle)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatCommon_LogPlayerReviveOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.RevivedPlayerHandle)
            XCTAssertNil(swiftObject.ReviverPlayerHandle) }
    }
}
