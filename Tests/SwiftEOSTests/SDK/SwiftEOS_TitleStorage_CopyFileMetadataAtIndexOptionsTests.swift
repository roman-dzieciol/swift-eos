import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_TitleStorage_CopyFileMetadataAtIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_TitleStorage_CopyFileMetadataAtIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_TitleStorage_CopyFileMetadataAtIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.Index, .zero)
            let swiftObject = try SwiftEOS_TitleStorage_CopyFileMetadataAtIndexOptions(sdkObject: cstruct) }
    }
}
