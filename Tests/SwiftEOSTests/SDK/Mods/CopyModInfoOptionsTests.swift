import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Mods_CopyModInfoOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Mods_CopyModInfoOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Mods_CopyModInfoOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.Type, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Mods_CopyModInfoOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertEqual(swiftObject.Type, .zero) }
    }
}
