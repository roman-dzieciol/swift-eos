import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_AttributeDataTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_AttributeData() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_AttributeData.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_SESSIONS_ATTRIBUTEDATA_API_LATEST)
            XCTAssertNil(cstruct.Key)
            XCTAssertEqual(cstruct.Value.AsInt64, .zero)
            XCTAssertEqual(cstruct.Value.AsDouble, .zero)
            XCTAssertEqual(cstruct.Value.AsBool, .zero)
            XCTAssertNil(cstruct.Value.AsUtf8)
            XCTAssertEqual(cstruct.ValueType, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_AttributeData(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_SESSIONS_ATTRIBUTEDATA_API_LATEST)
            XCTAssertNil(swiftObject.Key)
            XCTAssertEqual(swiftObject.Value.AsInt64, .zero)
            XCTAssertEqual(swiftObject.Value.AsDouble, .zero)
            XCTAssertEqual(swiftObject.Value.AsBool, .zero)
            XCTAssertNil(swiftObject.Value.AsUtf8)
            XCTAssertEqual(swiftObject.ValueType, .zero) }
    }
}
