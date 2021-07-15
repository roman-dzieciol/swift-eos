import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAudio_SendAudioOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_SendAudioOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_SendAudioOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            XCTAssertNil(cstruct.Buffer)
            let swiftObject = try SwiftEOS_RTCAudio_SendAudioOptions(sdkObject: cstruct) }
    }
}
