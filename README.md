
# H4XOR News iOS App

## Project Overview

H4XOR News is an iOS application designed to display top stories from Hacker News. The app fetches data from the Hacker News API and presents it in a SwiftUI-based interface, providing a clean and user-friendly experience. The app supports seamless navigation between story listings and detailed views, enabling users to stay up-to-date with the latest tech news.

## Key Features

- **Top Stories Listing**: Displays a list of the most popular stories from Hacker News.
- **SwiftUI Interface**: Modern and responsive UI built with SwiftUI.
- **Story Details View**: Provides more detailed information and a link to the full article.

## Technologies Used

- **Swift**
- **SwiftUI**
- **Hacker News API**

## Project Structure and Code Explanation

1. **Fetching Data from API**:
   - The app retrieves data using the Hacker News API and handles JSON decoding.
   ```swift
   func fetchStories() {
       if let url = URL(string: "https://hacker-news.firebaseio.com/v0/topstories.json?print=pretty") {
           URLSession.shared.dataTask(with: url) { data, response, error in
               if let safeData = data {
                   // Parse the data
               }
           }.resume()
       }
   }
   ```

2. **Story Listing View**:
   - SwiftUI is used to create a responsive list view that displays the fetched stories.
   ```swift
   struct StoryListView: View {
       var body: some View {
           List(stories) { story in
               Text(story.title)
           }
       }
   }
   ```

3. **Navigation and Story Details**:
   - The app allows users to tap on a story to navigate to a detailed view with more information.
   ```swift
   struct StoryDetailView: View {
       var story: Story
       var body: some View {
           VStack {
               Text(story.title)
               Text(story.url)
           }
       }
   }
   ```

## Project Output

Here are some screenshots showing the key features and output of the application:

<h3>H4XOR News APP</h3><img src="https://github.com/MalingaBandara/H4XOR-News-iOS-App/blob/main/Readme%20items/H4XOR%20NEWS.gif" width="25%" />
<h2>Screens</h2><img src="https://github.com/MalingaBandara/H4XOR-News-iOS-App/blob/main/Readme%20items/Home.png" width="25%" /> 
                  <img src="https://github.com/MalingaBandara/H4XOR-News-iOS-App/blob/main/Readme%20items/Web%20Side.png" width="25%" /> 

## How to Run the Project

1. Clone the repository:
   ```bash
   git clone https://github.com/MalingaBandara/H4XOR-News-iOS-App.git
   ```
2. Open the project in Xcode.
3. Run the project on an iOS simulator or device.

## Purpose and Future Enhancements

The H4XOR News project was developed to demonstrate fetching and displaying API data in an iOS app using SwiftUI. Future enhancements may include adding search functionality, sorting options, and improved error handling.

## License

This project is licensed under the MIT License.
