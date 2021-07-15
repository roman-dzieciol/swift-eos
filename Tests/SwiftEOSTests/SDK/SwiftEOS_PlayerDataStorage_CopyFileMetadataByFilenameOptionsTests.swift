import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_PlayerDataStorage_CopyFileMetadataByFilenameOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_PlayerDataStorage_CopyFileMetadataByFilenameOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_PlayerDataStorage_CopyFileMetadataByFilenameOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.Filename)
            let swiftObject = try SwiftEOS_PlayerDataStorage_CopyFileMetadataByFilenameOptions(sdkObject: cstruct) }
    }
}
