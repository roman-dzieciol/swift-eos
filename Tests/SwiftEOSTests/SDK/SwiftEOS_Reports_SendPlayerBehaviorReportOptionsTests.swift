import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Reports_SendPlayerBehaviorReportOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Reports_SendPlayerBehaviorReportOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Reports_SendPlayerBehaviorReportOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.ReporterUserId)
            XCTAssertNil(cstruct.ReportedUserId)
            XCTAssertEqual(cstruct.Category, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.Message)
            XCTAssertNil(cstruct.Context)
            let swiftObject = try SwiftEOS_Reports_SendPlayerBehaviorReportOptions(sdkObject: cstruct) }
    }
}
