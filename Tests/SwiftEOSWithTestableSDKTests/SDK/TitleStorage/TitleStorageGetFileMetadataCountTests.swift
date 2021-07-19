import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_TitleStorage_GetFileMetadataCountTests: XCTestCase {
    public func testEOS_TitleStorage_GetFileMetadataCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_TitleStorage_GetFileMetadataCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            TestGlobals.sdkReceived.append("EOS_TitleStorage_GetFileMetadataCount")
            return .zero }
        let object: SwiftEOS_TitleStorage_Actor = SwiftEOS_TitleStorage_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetFileMetadataCount(LocalUserId: nil)
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_TitleStorage_GetFileMetadataCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
