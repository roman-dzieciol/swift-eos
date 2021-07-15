import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_SessionDetails_AttributeTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionDetails_Attribute() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionDetails_Attribute.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.Data)
            XCTAssertEqual(cstruct.AdvertisementType, .init(rawValue: .zero)!)
            let swiftObject = try SwiftEOS_SessionDetails_Attribute(sdkObject: cstruct) }
    }
}
