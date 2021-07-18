import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_TitleStorage_DeleteCacheOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_TitleStorage_DeleteCacheOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_TitleStorage_DeleteCacheOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_TitleStorage_DeleteCacheOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
