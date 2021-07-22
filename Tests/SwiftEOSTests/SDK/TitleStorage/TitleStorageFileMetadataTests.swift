import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_TitleStorage_FileMetadataTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_TitleStorage_FileMetadata() throws {
        try withZeroInitializedCStruct(type: _tagEOS_TitleStorage_FileMetadata.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.FileSizeBytes, .zero)
            XCTAssertNil(cstruct.MD5Hash)
            XCTAssertNil(cstruct.Filename)
            XCTAssertEqual(cstruct.UnencryptedDataSizeBytes, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_TitleStorage_FileMetadata(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.FileSizeBytes, .zero)
            XCTAssertNil(swiftObject.MD5Hash)
            XCTAssertNil(swiftObject.Filename)
            XCTAssertEqual(swiftObject.UnencryptedDataSizeBytes, .zero) }
    }
}
