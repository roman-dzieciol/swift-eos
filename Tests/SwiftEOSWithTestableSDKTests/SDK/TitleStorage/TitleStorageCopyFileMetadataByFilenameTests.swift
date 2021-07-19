import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_TitleStorage_CopyFileMetadataByFilenameTests: XCTestCase {
    public func testEOS_TitleStorage_CopyFileMetadataByFilename_Null() throws {
        TestGlobals.reset()
        __on_EOS_TitleStorage_CopyFileMetadataByFilename = { Handle, Options, OutMetadata in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.Filename)
            XCTAssertNil(OutMetadata)
            TestGlobals.sdkReceived.append("EOS_TitleStorage_CopyFileMetadataByFilename")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_TitleStorage_Actor = SwiftEOS_TitleStorage_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_TitleStorage_FileMetadata? = try object.CopyFileMetadataByFilename(
            LocalUserId: nil,
            Filename: nil
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_TitleStorage_CopyFileMetadataByFilename"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
