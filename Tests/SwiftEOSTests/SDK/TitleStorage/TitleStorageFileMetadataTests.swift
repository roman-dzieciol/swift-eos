import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_TitleStorage_FileMetadataTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_TitleStorage_FileMetadata() throws {
        try withZeroInitializedCStruct(type: _tagEOS_TitleStorage_FileMetadata.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_TITLESTORAGE_FILEMETADATA_API_LATEST)
            XCTAssertEqual(cstruct.FileSizeBytes, .zero)
            XCTAssertNil(cstruct.MD5Hash)
            XCTAssertNil(cstruct.Filename)
            XCTAssertEqual(cstruct.UnencryptedDataSizeBytes, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_TitleStorage_FileMetadata(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_TITLESTORAGE_FILEMETADATA_API_LATEST)
            XCTAssertEqual(swiftObject.FileSizeBytes, .zero)
            XCTAssertNil(swiftObject.MD5Hash)
            XCTAssertNil(swiftObject.Filename)
            XCTAssertEqual(swiftObject.UnencryptedDataSizeBytes, .zero) }
    }
}
