import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_SessionDetails_CopySessionAttributeByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionDetails_CopySessionAttributeByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionDetails_CopySessionAttributeByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_SESSIONDETAILS_COPYSESSIONATTRIBUTEBYINDEX_API_LATEST)
            XCTAssertEqual(cstruct.AttrIndex, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_SessionDetails_CopySessionAttributeByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_SESSIONDETAILS_COPYSESSIONATTRIBUTEBYINDEX_API_LATEST)
            XCTAssertEqual(swiftObject.AttrIndex, .zero) }
    }
}
