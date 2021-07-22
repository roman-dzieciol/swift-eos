import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Reports_SendPlayerBehaviorReportOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Reports_SendPlayerBehaviorReportOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Reports_SendPlayerBehaviorReportOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.ReporterUserId)
            XCTAssertNil(cstruct.ReportedUserId)
            XCTAssertEqual(cstruct.Category, .zero)
            XCTAssertNil(cstruct.Message)
            XCTAssertNil(cstruct.Context)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Reports_SendPlayerBehaviorReportOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.ReporterUserId)
            XCTAssertNil(swiftObject.ReportedUserId)
            XCTAssertEqual(swiftObject.Category, .zero)
            XCTAssertNil(swiftObject.Message)
            XCTAssertNil(swiftObject.Context) }
    }
}
