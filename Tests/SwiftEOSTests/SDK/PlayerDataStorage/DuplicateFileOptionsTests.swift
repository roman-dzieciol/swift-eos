import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_PlayerDataStorage_DuplicateFileOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_PlayerDataStorage_DuplicateFileOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_PlayerDataStorage_DuplicateFileOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_PLAYERDATASTORAGE_DUPLICATEFILEOPTIONS_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.SourceFilename)
            XCTAssertNil(cstruct.DestinationFilename)
            let swiftObject = try XCTUnwrap(try SwiftEOS_PlayerDataStorage_DuplicateFileOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_PLAYERDATASTORAGE_DUPLICATEFILEOPTIONS_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.SourceFilename)
            XCTAssertNil(swiftObject.DestinationFilename) }
    }
}
