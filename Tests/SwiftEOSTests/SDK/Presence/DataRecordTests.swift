import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Presence_DataRecordTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Presence_DataRecord() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Presence_DataRecord.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_PRESENCE_DATARECORD_API_LATEST)
            XCTAssertNil(cstruct.Key)
            XCTAssertNil(cstruct.Value)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Presence_DataRecord(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_PRESENCE_DATARECORD_API_LATEST)
            XCTAssertNil(swiftObject.Key)
            XCTAssertNil(swiftObject.Value) }
    }
}
