import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_PresenceModification_SetDataOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_PresenceModification_SetDataOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_PresenceModification_SetDataOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_PRESENCEMODIFICATION_SETDATA_API_LATEST)
            XCTAssertEqual(cstruct.RecordsCount, .zero)
            XCTAssertNil(cstruct.Records)
            let swiftObject = try XCTUnwrap(try SwiftEOS_PresenceModification_SetDataOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_PRESENCEMODIFICATION_SETDATA_API_LATEST)
            XCTAssertNil(swiftObject.Records) }
    }
}
