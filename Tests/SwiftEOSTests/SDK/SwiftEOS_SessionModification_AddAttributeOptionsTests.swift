import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_SessionModification_AddAttributeOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionModification_AddAttributeOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionModification_AddAttributeOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.SessionAttribute)
            XCTAssertEqual(cstruct.AdvertisementType, .init(rawValue: .zero)!)
            let swiftObject = try SwiftEOS_SessionModification_AddAttributeOptions(sdkObject: cstruct) }
    }
}
