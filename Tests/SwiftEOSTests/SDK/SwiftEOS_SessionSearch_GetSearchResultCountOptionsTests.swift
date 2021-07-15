import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_SessionSearch_GetSearchResultCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionSearch_GetSearchResultCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionSearch_GetSearchResultCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try SwiftEOS_SessionSearch_GetSearchResultCountOptions(sdkObject: cstruct) }
    }
}
