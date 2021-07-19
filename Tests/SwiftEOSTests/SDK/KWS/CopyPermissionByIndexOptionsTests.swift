import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_KWS_CopyPermissionByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_KWS_CopyPermissionByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_KWS_CopyPermissionByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_KWS_COPYPERMISSIONBYINDEX_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.Index, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_KWS_CopyPermissionByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_KWS_COPYPERMISSIONBYINDEX_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertEqual(swiftObject.Index, .zero) }
    }
}
