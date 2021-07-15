import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Presence_DataRecordTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Presence_DataRecord() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Presence_DataRecord.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.Key)
            XCTAssertNil(cstruct.Value)
            let swiftObject = try SwiftEOS_Presence_DataRecord(sdkObject: cstruct) }
    }
}
