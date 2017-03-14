import Foundation
import PathKit

let OUTPUT_DIR = Path("./schwalbe_output")

func sanityCheck(_ input: [String]) throws {
    guard input.count > 0 else {
        throw SchwalbeError.noInputFiles
    }
    guard input.filter({ $0.hasSuffix(".schwalbe") }).count > 0 else {
        throw SchwalbeError.noSchwalbeFiles
    }
}

func createOutputDir(atPath path: Path) throws {
    if path.exists {
        // FIXME: Workaround for `path.copy` not wanting to overwrite.
        try path.delete()
    }
    try path.mkdir()
}

public func process(input: [String]) throws {
    let input = input.filter { !$0.contains(OUTPUT_DIR.string) }
    try sanityCheck(input)

    let multipleFiles = input.count > 1
    if multipleFiles {
        try createOutputDir(atPath: OUTPUT_DIR)
    }

    for file in input {
        guard file.hasSuffix(".schwalbe") else {
            if multipleFiles {
                let filePath = Path(file)
                try filePath.copy(OUTPUT_DIR + filePath)
            }
            continue
        }

        do {
            try process(file: file, writeToDir: multipleFiles)
        } catch let error as SchwalbeError {
            print(error.text)
        } catch let error {
            print(error.localizedDescription)
        }
    }

    print(Message.finished.text)
}

func process(file: String, writeToDir: Bool) throws {
    if writeToDir {
        print(Message.processing(file).text)
    }

    let filePath = Path(file)
    guard let schwalbeSrc: String = try? filePath.read() else {
        throw SchwalbeError.fileReadFailure(filePath.string)
    }

    let swiftSrc = translate(schwalbeSrc)

    if writeToDir {
        let fileOutPath = OUTPUT_DIR + Path(filePath.string.replacingOccurrences(of: ".schwalbe", with: ".swift"))
        print(Message.writing(fileOutPath.abbreviate().string).text)
        try fileOutPath.write(swiftSrc)
    } else {
        print(swiftSrc)
    }
}
