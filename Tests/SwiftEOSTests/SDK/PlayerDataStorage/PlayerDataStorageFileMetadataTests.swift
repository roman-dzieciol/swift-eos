import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_PlayerDataStorage_FileMetadataTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_PlayerDataStorage_FileMetadata() throws {
        try withZeroInitializedCStruct(type: _tagEOS_PlayerDataStorage_FileMetadata.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.FileSizeBytes, .zero)
            XCTAssertNil(cstruct.MD5Hash)
            XCTAssertNil(cstruct.Filename)
            XCTAssertEqual(cstruct.LastModifiedTime, .zero)
            XCTAssertEqual(cstruct.UnencryptedDataSizeBytes, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_PlayerDataStorage_FileMetadata(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.FileSizeBytes, .zero)
            XCTAssertNil(swiftObject.MD5Hash)
            XCTAssertNil(swiftObject.Filename)
            XCTAssertEqual(swiftObject.LastModifiedTime, .zero)
            XCTAssertEqual(swiftObject.UnencryptedDataSizeBytes, .zero) }
    }
}
