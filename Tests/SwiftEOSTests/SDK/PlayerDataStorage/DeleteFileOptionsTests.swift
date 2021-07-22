import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_PlayerDataStorage_DeleteFileOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_PlayerDataStorage_DeleteFileOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_PlayerDataStorage_DeleteFileOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.Filename)
            let swiftObject = try XCTUnwrap(try SwiftEOS_PlayerDataStorage_DeleteFileOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.Filename) }
    }
}
