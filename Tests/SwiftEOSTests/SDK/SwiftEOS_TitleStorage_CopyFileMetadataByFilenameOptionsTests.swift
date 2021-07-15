import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_TitleStorage_CopyFileMetadataByFilenameOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_TitleStorage_CopyFileMetadataByFilenameOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_TitleStorage_CopyFileMetadataByFilenameOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.Filename)
            let swiftObject = try SwiftEOS_TitleStorage_CopyFileMetadataByFilenameOptions(sdkObject: cstruct) }
    }
}
