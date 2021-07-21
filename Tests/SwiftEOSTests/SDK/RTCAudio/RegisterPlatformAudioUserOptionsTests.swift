import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAudio_RegisterPlatformAudioUserOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_RegisterPlatformAudioUserOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_RegisterPlatformAudioUserOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.UserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTCAudio_RegisterPlatformAudioUserOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.UserId) }
    }
}
