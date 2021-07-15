import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_LobbySearch_FindCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbySearch_FindCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbySearch_FindCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            let swiftObject = try SwiftEOS_LobbySearch_FindCallbackInfo(sdkObject: cstruct) }
    }
}
