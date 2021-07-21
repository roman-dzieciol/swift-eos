import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_SessionModification_AddAttributeOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionModification_AddAttributeOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionModification_AddAttributeOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.SessionAttribute)
            XCTAssertEqual(cstruct.AdvertisementType, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_SessionModification_AddAttributeOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.SessionAttribute)
            XCTAssertEqual(swiftObject.AdvertisementType, .zero) }
    }
}
