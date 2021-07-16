import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_SessionModification_RemoveAttributeOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionModification_RemoveAttributeOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionModification_RemoveAttributeOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.Key)
            let swiftObject = try XCTUnwrap(try SwiftEOS_SessionModification_RemoveAttributeOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.Key) }
    }
}
