import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_SessionDetails_AttributeTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionDetails_Attribute() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionDetails_Attribute.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.Data)
            XCTAssertEqual(cstruct.AdvertisementType, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_SessionDetails_Attribute(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.Data)
            XCTAssertEqual(swiftObject.AdvertisementType, .zero) }
    }
}
