import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionModification_SetBucketIdTests: XCTestCase {
    public func testEOS_SessionModification_SetBucketId_Null() throws {
        TestGlobals.reset()
        __on_EOS_SessionModification_SetBucketId = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.BucketId)
            TestGlobals.sdkReceived.append("EOS_SessionModification_SetBucketId")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_SessionModification_Actor = SwiftEOS_SessionModification_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetBucketId(BucketId: nil)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_SessionModification_SetBucketId"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
