import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_AttributeDataTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_AttributeData() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_AttributeData.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.Key)
            XCTFail("TODO: cstruct.Value")
            XCTAssertEqual(cstruct.ValueType, .init(rawValue: .zero)!)
            let swiftObject = try SwiftEOS_Sessions_AttributeData(sdkObject: cstruct) }
    }
}
