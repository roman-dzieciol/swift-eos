import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTC_ParticipantMetadataTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTC_ParticipantMetadata() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTC_ParticipantMetadata.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.Key)
            XCTAssertNil(cstruct.Value)
            let swiftObject = try SwiftEOS_RTC_ParticipantMetadata(sdkObject: cstruct) }
    }
}
