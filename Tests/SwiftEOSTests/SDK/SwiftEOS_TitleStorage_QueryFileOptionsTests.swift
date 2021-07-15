import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_TitleStorage_QueryFileOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_TitleStorage_QueryFileOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_TitleStorage_QueryFileOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.Filename)
            let swiftObject = try SwiftEOS_TitleStorage_QueryFileOptions(sdkObject: cstruct) }
    }
}
