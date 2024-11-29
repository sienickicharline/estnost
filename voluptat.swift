let textView = UITextView()
let url = URL(string: "https://www.example.com")!
let action = OpenURLAction(url: url)
textView.addInteraction(action)
