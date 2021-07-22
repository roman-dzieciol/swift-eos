import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Stats_IngestDataTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Stats_IngestData() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Stats_IngestData.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.StatName)
            XCTAssertEqual(cstruct.IngestAmount, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Stats_IngestData(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.StatName)
            XCTAssertEqual(swiftObject.IngestAmount, .zero) }
    }
}
