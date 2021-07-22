import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_SessionDetails_CopySessionAttributeByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionDetails_CopySessionAttributeByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionDetails_CopySessionAttributeByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.AttrIndex, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_SessionDetails_CopySessionAttributeByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.AttrIndex, .zero) }
    }
}
