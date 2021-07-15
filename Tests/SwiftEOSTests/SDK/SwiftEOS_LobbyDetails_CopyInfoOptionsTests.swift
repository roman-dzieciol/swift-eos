import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_LobbyDetails_CopyInfoOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbyDetails_CopyInfoOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbyDetails_CopyInfoOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try SwiftEOS_LobbyDetails_CopyInfoOptions(sdkObject: cstruct) }
    }
}
