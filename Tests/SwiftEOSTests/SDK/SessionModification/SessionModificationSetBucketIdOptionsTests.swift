import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_SessionModification_SetBucketIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionModification_SetBucketIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionModification_SetBucketIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.BucketId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_SessionModification_SetBucketIdOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.BucketId) }
    }
}
