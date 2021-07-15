import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_TitleStorage_GetFileMetadataCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_TitleStorage_GetFileMetadataCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_TitleStorage_GetFileMetadataCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try SwiftEOS_TitleStorage_GetFileMetadataCountOptions(sdkObject: cstruct) }
    }
}
