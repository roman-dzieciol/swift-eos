import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Ecom_CopyItemReleaseByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_CopyItemReleaseByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_CopyItemReleaseByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.ItemId)
            XCTAssertEqual(cstruct.ReleaseIndex, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_CopyItemReleaseByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.ItemId)
            XCTAssertEqual(swiftObject.ReleaseIndex, .zero) }
    }
}
