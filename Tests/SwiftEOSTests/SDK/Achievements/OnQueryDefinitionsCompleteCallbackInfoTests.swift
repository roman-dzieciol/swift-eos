import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Achievements_OnQueryDefinitionsCompleteCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Achievements_OnQueryDefinitionsCompleteCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Achievements_OnQueryDefinitionsCompleteCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Achievements_OnQueryDefinitionsCompleteCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero) }
    }
}
