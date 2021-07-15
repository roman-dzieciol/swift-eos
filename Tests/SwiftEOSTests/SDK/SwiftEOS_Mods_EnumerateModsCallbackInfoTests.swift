import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Mods_EnumerateModsCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Mods_EnumerateModsCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Mods_EnumerateModsCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertEqual(cstruct.Type, .init(rawValue: .zero)!)
            let swiftObject = try SwiftEOS_Mods_EnumerateModsCallbackInfo(sdkObject: cstruct) }
    }
}
