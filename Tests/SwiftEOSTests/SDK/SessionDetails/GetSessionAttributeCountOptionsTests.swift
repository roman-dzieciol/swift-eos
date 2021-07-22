import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_SessionDetails_GetSessionAttributeCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionDetails_GetSessionAttributeCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionDetails_GetSessionAttributeCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_SessionDetails_GetSessionAttributeCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}
