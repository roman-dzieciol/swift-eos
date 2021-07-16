import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Metrics_EndPlayerSessionOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Metrics_EndPlayerSessionOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Metrics_EndPlayerSessionOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.AccountIdType, .init(rawValue: .zero)!)
            XCTFail("TODO: cstruct.AccountId")
            let swiftObject = try XCTUnwrap(try SwiftEOS_Metrics_EndPlayerSessionOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.AccountIdType, .init(rawValue: .zero)!)
            XCTFail("TODO: swiftObject.AccountId") }
    }
}
