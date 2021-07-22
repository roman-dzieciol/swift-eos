import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Metrics_EndPlayerSessionOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Metrics_EndPlayerSessionOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Metrics_EndPlayerSessionOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.AccountIdType, .zero)
            XCTAssertNil(cstruct.AccountId.Epic)
            XCTAssertNil(cstruct.AccountId.External)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Metrics_EndPlayerSessionOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.AccountIdType, .zero)
            XCTAssertNil(swiftObject.AccountId.Epic)
            XCTAssertNil(swiftObject.AccountId.External) }
    }
}
