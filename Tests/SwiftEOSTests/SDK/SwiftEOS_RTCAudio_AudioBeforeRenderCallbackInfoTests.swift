import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAudio_AudioBeforeRenderCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_AudioBeforeRenderCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_AudioBeforeRenderCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            XCTAssertNil(cstruct.Buffer)
            XCTAssertNil(cstruct.ParticipantId)
            let swiftObject = try SwiftEOS_RTCAudio_AudioBeforeRenderCallbackInfo(sdkObject: cstruct) }
    }
}
