import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Mods_UpdateModCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Mods_UpdateModCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Mods_UpdateModCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.Mod)
            let swiftObject = try SwiftEOS_Mods_UpdateModCallbackInfo(sdkObject: cstruct) }
    }
}
