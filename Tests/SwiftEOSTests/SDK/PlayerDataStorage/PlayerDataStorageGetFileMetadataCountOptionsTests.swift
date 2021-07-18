import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_PlayerDataStorage_GetFileMetadataCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_PlayerDataStorage_GetFileMetadataCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_PlayerDataStorage_GetFileMetadataCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_PlayerDataStorage_GetFileMetadataCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
