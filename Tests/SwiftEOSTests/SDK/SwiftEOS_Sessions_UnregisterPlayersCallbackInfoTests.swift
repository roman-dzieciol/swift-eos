import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_UnregisterPlayersCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_UnregisterPlayersCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_UnregisterPlayersCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_UnregisterPlayersCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .init(rawValue: .zero)!) }
    }
}
