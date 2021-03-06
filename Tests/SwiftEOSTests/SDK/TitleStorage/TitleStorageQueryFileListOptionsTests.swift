import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_TitleStorage_QueryFileListOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_TitleStorage_QueryFileListOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_TitleStorage_QueryFileListOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.ListOfTags)
            XCTAssertEqual(cstruct.ListOfTagsCount, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_TitleStorage_QueryFileListOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.ListOfTags) }
    }
}
