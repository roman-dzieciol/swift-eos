import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_PlayerDataStorage_DeleteCacheOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_PlayerDataStorage_DeleteCacheOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_PlayerDataStorage_DeleteCacheOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_PLAYERDATASTORAGE_DELETECACHEOPTIONS_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_PlayerDataStorage_DeleteCacheOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_PLAYERDATASTORAGE_DELETECACHEOPTIONS_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
