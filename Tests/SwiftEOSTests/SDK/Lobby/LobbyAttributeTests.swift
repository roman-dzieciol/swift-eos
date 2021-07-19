import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_AttributeTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_Attribute() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_Attribute.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_LOBBY_ATTRIBUTE_API_LATEST)
            XCTAssertNil(cstruct.Data)
            XCTAssertEqual(cstruct.Visibility, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_Attribute(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_LOBBY_ATTRIBUTE_API_LATEST)
            XCTAssertNil(swiftObject.Data)
            XCTAssertEqual(swiftObject.Visibility, .zero) }
    }
}
