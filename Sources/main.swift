import Foundation
import PathKit

let OUTPUT_DIR = "schwalbe_output"

let inputFiles = CommandLine.arguments.dropFirst().filter { !$0.contains(OUTPUT_DIR) }
guard inputFiles.count > 0 else {
    print("No input files")
    exit(1)
}
guard inputFiles.filter({ $0.hasSuffix(".schwalbe") }).count > 0 else {
    print("Found no *.schwalbe files to process.")
    exit(0)
}

let outputPath = Path("./\(OUTPUT_DIR)")
if outputPath.exists {
    try! outputPath.delete() // FIXME: Workaround for `path.copy` below not wanting to overwrite.
}
try! outputPath.mkdir()


for filePath in inputFiles {
    let path = Path(filePath)

    guard path.string.hasSuffix(".schwalbe") else {
        try? path.copy(outputPath + filePath)
        continue
    }

    print("⚙️  Processing \(path.abbreviate())...")
    guard let schwalbe: String = try? path.read() else {
        print("Couldn't read \(path). Exiting.")
        exit(1)
    }
    let swift = translate(schwalbe)

    let outFile = Path(path.string.replacingOccurrences(of: ".schwalbe", with: ".swift"))
    let outPath = outputPath + outFile
    print("Writing \(outPath.abbreviate())")
    try? outPath.write(swift)
}

print("All done ✅")
