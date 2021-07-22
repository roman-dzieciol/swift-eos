import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_TitleStorage_CopyFileMetadataAtIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_TitleStorage_CopyFileMetadataAtIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_TitleStorage_CopyFileMetadataAtIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.Index, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_TitleStorage_CopyFileMetadataAtIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertEqual(swiftObject.Index, .zero) }
    }
}
