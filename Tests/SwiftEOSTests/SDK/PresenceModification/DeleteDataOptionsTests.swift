import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_PresenceModification_DeleteDataOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_PresenceModification_DeleteDataOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_PresenceModification_DeleteDataOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_PRESENCEMODIFICATION_DELETEDATA_API_LATEST)
            XCTAssertEqual(cstruct.RecordsCount, .zero)
            XCTAssertNil(cstruct.Records)
            let swiftObject = try XCTUnwrap(try SwiftEOS_PresenceModification_DeleteDataOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_PRESENCEMODIFICATION_DELETEDATA_API_LATEST)
            XCTAssertNil(swiftObject.Records) }
    }
}
