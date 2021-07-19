import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_TitleStorage_CopyFileMetadataAtIndexTests: XCTestCase {
    public func testEOS_TitleStorage_CopyFileMetadataAtIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_TitleStorage_CopyFileMetadataAtIndex = { Handle, Options, OutMetadata in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertEqual(Options!.pointee.Index, .zero)
            XCTAssertNil(OutMetadata)
            TestGlobals.sdkReceived.append("EOS_TitleStorage_CopyFileMetadataAtIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_TitleStorage_Actor = SwiftEOS_TitleStorage_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_TitleStorage_FileMetadata? = try object.CopyFileMetadataAtIndex(
            LocalUserId: nil,
            Index: .zero
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_TitleStorage_CopyFileMetadataAtIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
