import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_PresenceModification_DataRecordIdTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_PresenceModification_DataRecordId() throws {
        try withZeroInitializedCStruct(type: _tagEOS_PresenceModification_DataRecordId.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.Key)
            let swiftObject = try SwiftEOS_PresenceModification_DataRecordId(sdkObject: cstruct) }
    }
}
