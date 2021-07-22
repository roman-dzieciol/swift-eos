import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_SessionDetails_CopySessionAttributeByKeyOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionDetails_CopySessionAttributeByKeyOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionDetails_CopySessionAttributeByKeyOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.AttrKey)
            let swiftObject = try XCTUnwrap(try SwiftEOS_SessionDetails_CopySessionAttributeByKeyOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.AttrKey) }
    }
}
