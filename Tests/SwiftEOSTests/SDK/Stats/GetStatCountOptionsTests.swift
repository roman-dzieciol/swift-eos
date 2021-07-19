import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Stats_GetStatCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Stats_GetStatCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Stats_GetStatCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_STATS_GETSTATSCOUNT_API_LATEST)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Stats_GetStatCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_STATS_GETSTATSCOUNT_API_LATEST)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}
