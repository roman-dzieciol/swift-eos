import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Lobby_LocalRTCOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_LocalRTCOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_LocalRTCOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.Flags, .zero)
            XCTAssertEqual(cstruct.bUseManualAudioInput, .zero)
            XCTAssertEqual(cstruct.bUseManualAudioOutput, .zero)
            XCTAssertEqual(cstruct.bAudioOutputStartsMuted, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_LocalRTCOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.Flags, .zero)
            XCTAssertEqual(swiftObject.bUseManualAudioInput, false)
            XCTAssertEqual(swiftObject.bUseManualAudioOutput, false)
            XCTAssertEqual(swiftObject.bAudioOutputStartsMuted, false) }
    }
}
