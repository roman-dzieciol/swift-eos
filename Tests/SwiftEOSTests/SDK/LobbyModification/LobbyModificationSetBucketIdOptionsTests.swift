import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_LobbyModification_SetBucketIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_LobbyModification_SetBucketIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_LobbyModification_SetBucketIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_LOBBYMODIFICATION_SETBUCKETID_API_LATEST)
            XCTAssertNil(cstruct.BucketId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_LobbyModification_SetBucketIdOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_LOBBYMODIFICATION_SETBUCKETID_API_LATEST)
            XCTAssertNil(swiftObject.BucketId) }
    }
}
