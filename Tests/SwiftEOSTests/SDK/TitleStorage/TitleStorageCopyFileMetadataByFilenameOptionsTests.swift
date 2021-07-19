import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_TitleStorage_CopyFileMetadataByFilenameOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_TitleStorage_CopyFileMetadataByFilenameOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_TitleStorage_CopyFileMetadataByFilenameOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_TITLESTORAGE_COPYFILEMETADATABYFILENAMEOPTIONS_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.Filename)
            let swiftObject = try XCTUnwrap(try SwiftEOS_TitleStorage_CopyFileMetadataByFilenameOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_TITLESTORAGE_COPYFILEMETADATABYFILENAMEOPTIONS_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.Filename) }
    }
}
