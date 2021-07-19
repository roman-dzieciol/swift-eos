import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_UI_AcknowledgeEventIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UI_AcknowledgeEventIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UI_AcknowledgeEventIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_UI_ACKNOWLEDGEEVENTID_API_LATEST)
            XCTAssertEqual(cstruct.UiEventId, .zero)
            XCTAssertEqual(cstruct.Result, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_UI_AcknowledgeEventIdOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_UI_ACKNOWLEDGEEVENTID_API_LATEST)
            XCTAssertEqual(swiftObject.UiEventId, .zero)
            XCTAssertEqual(swiftObject.Result, .zero) }
    }
}
