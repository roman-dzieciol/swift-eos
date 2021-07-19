import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PlayerDataStorage_GetFileMetadataCountTests: XCTestCase {
    public func testEOS_PlayerDataStorage_GetFileMetadataCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_PlayerDataStorage_GetFileMetadataCount = { Handle, GetFileMetadataCountOptions, OutFileMetadataCount in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(GetFileMetadataCountOptions!.pointee.ApiVersion, .zero)
            XCTAssertNil(GetFileMetadataCountOptions!.pointee.LocalUserId)
            XCTAssertNil(OutFileMetadataCount)
            TestGlobals.sdkReceived.append("EOS_PlayerDataStorage_GetFileMetadataCount")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_PlayerDataStorage_Actor = SwiftEOS_PlayerDataStorage_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int? = try object.GetFileMetadataCount(LocalUserId: nil)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_PlayerDataStorage_GetFileMetadataCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
