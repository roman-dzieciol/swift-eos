import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAudio_UnregisterPlatformAudioUserOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_UnregisterPlatformAudioUserOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_UnregisterPlatformAudioUserOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.UserId)
            let swiftObject = try SwiftEOS_RTCAudio_UnregisterPlatformAudioUserOptions(sdkObject: cstruct) }
    }
}
