import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_PresenceModification_SetRawRichTextOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_PresenceModification_SetRawRichTextOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_PresenceModification_SetRawRichTextOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.RichText)
            let swiftObject = try XCTUnwrap(try SwiftEOS_PresenceModification_SetRawRichTextOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.RichText) }
    }
}
