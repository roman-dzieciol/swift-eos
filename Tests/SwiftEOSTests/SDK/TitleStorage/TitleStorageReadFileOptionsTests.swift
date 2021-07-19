import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_TitleStorage_ReadFileOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_TitleStorage_ReadFileOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_TitleStorage_ReadFileOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_TITLESTORAGE_READFILEOPTIONS_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.Filename)
            XCTAssertEqual(cstruct.ReadChunkLengthBytes, .zero)
            XCTAssertNil(cstruct.ReadFileDataCallback)
            XCTAssertNil(cstruct.FileTransferProgressCallback)
            let swiftObject = try XCTUnwrap(try SwiftEOS_TitleStorage_ReadFileOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_TITLESTORAGE_READFILEOPTIONS_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.Filename)
            XCTAssertEqual(swiftObject.ReadChunkLengthBytes, .zero)
            XCTAssertNil(swiftObject.ReadFileDataCallback)
            XCTAssertNil(swiftObject.FileTransferProgressCallback) }
    }
}
