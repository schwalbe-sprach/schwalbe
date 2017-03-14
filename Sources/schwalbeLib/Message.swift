import Foundation

enum Message {
    case processing(String)
    case writing(String)
    case finished

    var text: String {
        guard let lang = Locale.current.languageCode else {
            return ""
        }

        switch lang.lowercased() {
        case "de":
            switch self {
            case .processing(let file): return "⚙️  Verarbeite \(file)"
            case .writing(let file): return "Schreibe \(file)"
            case .finished: return "Fertig ✅"
            }
        default:
            switch self {
            case .processing(let file): return "⚙️  Processing \(file)"
            case .writing(let file): return "Writing \(file)"
            case .finished: return "All done ✅"
            }
        }
    }
}
