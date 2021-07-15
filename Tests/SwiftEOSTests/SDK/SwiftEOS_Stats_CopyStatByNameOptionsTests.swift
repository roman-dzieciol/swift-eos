import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Stats_CopyStatByNameOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Stats_CopyStatByNameOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Stats_CopyStatByNameOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertNil(cstruct.Name)
            let swiftObject = try SwiftEOS_Stats_CopyStatByNameOptions(sdkObject: cstruct) }
    }
}
