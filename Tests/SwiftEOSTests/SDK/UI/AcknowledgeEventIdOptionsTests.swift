import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_UI_AcknowledgeEventIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UI_AcknowledgeEventIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UI_AcknowledgeEventIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.UiEventId, .zero)
            XCTAssertEqual(cstruct.Result, .init(rawValue: .zero)!)
            let swiftObject = try XCTUnwrap(try SwiftEOS_UI_AcknowledgeEventIdOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.UiEventId, .zero)
            XCTAssertEqual(swiftObject.Result, .init(rawValue: .zero)!) }
    }
}
