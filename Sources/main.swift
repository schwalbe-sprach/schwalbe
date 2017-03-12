import Foundation
import PathKit

let OUTPUT_DIR = "schwalbe_output"

let inputFiles = CommandLine.arguments.dropFirst().filter { !$0.contains(OUTPUT_DIR) }
guard inputFiles.count > 0 else {
    print(.noInputFiles)
    exit(1)
}
guard inputFiles.filter({ $0.hasSuffix(".schwalbe") }).count > 0 else {
    print(.noSchwalbeFiles)
    exit(0)
}
let singleFile = inputFiles.count == 1

let outputDir = Path("./\(OUTPUT_DIR)")
if !singleFile {
    if outputDir.exists {
        try? outputDir.delete() // FIXME: Workaround for `path.copy` below not wanting to overwrite.
    }
    try? outputDir.mkdir()
}

for filePath in inputFiles {
    let path = Path(filePath)

    guard path.string.hasSuffix(".schwalbe") else {
        if !singleFile {
            try? path.copy(outputDir + filePath)
        }
        continue
    }

    print(.processing(file: path.abbreviate().string), suppress: singleFile)
    guard let schwalbe: String = try? path.read() else {
        print(.couldntRead(file: path.string))
        exit(1)
    }
    let swift = translate(schwalbe)

    if singleFile {
        print(swift)
    } else {
        let fileOutputPath = outputDir + Path(path.string.replacingOccurrences(of: ".schwalbe", with: ".swift"))
        print(.writing(file: fileOutputPath.abbreviate().string), suppress: singleFile)
        try? fileOutputPath.write(swift)
    }
}

print(.finished, suppress: singleFile)
