import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_LobbySearch_RemoveParameterOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbySearch_RemoveParameterOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbySearch_RemoveParameterOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.Key)
            XCTAssertEqual(cstruct.ComparisonOp, .init(rawValue: .zero)!)
            let swiftObject = try SwiftEOS_LobbySearch_RemoveParameterOptions(sdkObject: cstruct) }
    }
}
