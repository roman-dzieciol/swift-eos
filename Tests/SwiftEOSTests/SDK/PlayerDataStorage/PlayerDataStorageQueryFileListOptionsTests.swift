import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_PlayerDataStorage_QueryFileListOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_PlayerDataStorage_QueryFileListOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_PlayerDataStorage_QueryFileListOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_PLAYERDATASTORAGE_QUERYFILELISTOPTIONS_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_PlayerDataStorage_QueryFileListOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_PLAYERDATASTORAGE_QUERYFILELISTOPTIONS_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
