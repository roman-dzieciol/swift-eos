import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Stats_CopyStatByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Stats_CopyStatByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Stats_CopyStatByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertEqual(cstruct.StatIndex, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Stats_CopyStatByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.TargetUserId)
            XCTAssertEqual(swiftObject.StatIndex, .zero) }
    }
}
