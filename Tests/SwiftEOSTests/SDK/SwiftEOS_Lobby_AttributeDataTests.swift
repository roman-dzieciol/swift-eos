import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_AttributeDataTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_AttributeData() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_AttributeData.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.Key)
            XCTFail("TODO: cstruct.Value")
            XCTAssertEqual(cstruct.ValueType, .init(rawValue: .zero)!)
            let swiftObject = try SwiftEOS_Lobby_AttributeData(sdkObject: cstruct) }
    }
}
