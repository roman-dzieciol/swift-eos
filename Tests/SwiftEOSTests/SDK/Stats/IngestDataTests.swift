import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Stats_IngestDataTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Stats_IngestData() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Stats_IngestData.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_STATS_INGESTDATA_API_LATEST)
            XCTAssertNil(cstruct.StatName)
            XCTAssertEqual(cstruct.IngestAmount, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Stats_IngestData(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_STATS_INGESTDATA_API_LATEST)
            XCTAssertNil(swiftObject.StatName)
            XCTAssertEqual(swiftObject.IngestAmount, .zero) }
    }
}
